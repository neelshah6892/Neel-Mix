ba = bytearray.fromhex("AA55CC3301AA55CC330F234567")
ba.reverse()
s = ''.join(format(x, '02x') for x in ba)
print(s.upper())