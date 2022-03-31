def _decode_key_block(self, key_block_compressed, key_block_info_list):
    key_list = []
    i = 0
    for compressed_size, decompressed_size in key_block_info_list:
        start = i
        end = i + compressed_size
        # 4 bytes : compression type
        key_block_type = key_block_compressed[start:start+4]
        # 4 bytes : adler checksum of decompressed key block
        adler32 = unpack('>I', key_block_compressed[start+4:start+8])[0]
        if key_block_type == b'\x00\x00\x00\x00':
            key_block = key_block_compressed[start+8:end]
        elif key_block_type == b'\x01\x00\x00\x00':
            if lzo is None:
                print("LZO compression is not supported")
                break
            # decompress key block
            header = b'\xf0' + pack('>I', decompressed_size)
            key_block = lzo.decompress(header + key_block_compressed[start+8:end])
        elif key_block_type == b'\x02\x00\x00\x00':
            # decompress key block
            key_block = zlib.decompress(key_block_compressed[start+8:end])
        # extract one single key block into a key list
        key_list += self._split_key_block(key_block)
        # notice that adler32 returns signed value
        assert(adler32 == zlib.adler32(key_block) & 0xffffffff)
 
        i += compressed_size
    return key_list