try:
    destinationLength = _receivedBytes.Length
    Array.Resize(ref _receivedBytes, (destinationLength + data.Length))
    Array.Copy(data, 0, _receivedBytes, destinationLength, data.Length)

    #byte[] processData


    sourceIndex = 0
    noPackets = 0
    subIndex = 0
    #CompressPacket compressPacket
    #CompressSubPacket compressSubPacket

    while ((_receivedBytes.Length - sourceIndex) > 511):
    processData = new byte[512]
    Array.Copy(_receivedBytes, sourceIndex, processData, 0, processData.Length)
    compressPacket = PinnedPacket<CompressPacket>(processData)

   #region Process Packet

    noPackets = 0
    subIndex = 0
    while (compressPacket.NoOfPacket > 0  and compressPacket.NoOfPacket != noPackets  and subIndex < 507):
        processData = new byte[compressPacket.PacketData.Length - subIndex]
        Array.Copy(compressPacket.PacketData, subIndex, processData, 0, processData.Length)
        compressSubPacket = PinnedPacket<CompressSubPacket>(processData)
        if (compressSubPacket.CompressLength > 0  and compressSubPacket.CompressLength < 507):
  #region Compress data
            if (compressSubPacket.CompressLength > 9  and compressSubPacket.CompressLength <= compressSubPacket.PacketData.Length):
                processData = new byte[compressSubPacket.CompressLength]
                Array.Copy(compressSubPacket.PacketData, processData, processData.Length)
                byte[] unCompressData = _udp.LzoCompressor.UncompressData(processData)
                if (unCompressData.Length > 0):
                    if (unCompressData[0] == 2):
                        processData = new byte[unCompressData.Length - 8]
                        Array.Copy(unCompressData, 8, processData, 0, processData.Length)
                        ProcessPacket(processData)
                    else:
                        break
  
                    subIndex += 2 + compressSubPacket.CompressLength
                elif(compressSubPacket.CompressLength == 0):
                    processData = new byte[compressSubPacket.PacketData.Length - 8]
                    Array.Copy(compressSubPacket.PacketData, 8, processData, 0, processData.Length)
                    MessageHeader messageHeader = PinnedPacket<MessageHeader>(processData)
                    if (messageHeader.TransCode == 7202):
                        if (processData.Length > 0  and processData.Length >= messageHeader.MessageLength  and messageHeader.ErrorCode == 0):
                            if (compressSubPacket.PacketData[subIndex] == 4):
                                processData = new byte[messageHeader.MessageLength]
                                Array.Copy(compressSubPacket.PacketData, subIndex + 8, processData, 0, messageHeader.MessageLength)
                                ProcessPacket(processData)
                            else:
                                break
                        if (messageHeader.MessageLength > 0):
                            subIndex += 2 + 8 + messageHeader.MessageLength
                    else:
                        break

                    noPackets++

                sourceIndex += 512
  

            processData = new byte[_receivedBytes.Length - sourceIndex]
            Array.Copy(_receivedBytes, sourceIndex, processData, 0, processData.Length)
            _receivedBytes = processData

except Exception as e:
    if (ex.Message.Contains("Input string was not in a correct format"))
    _receivedBytes = new byte[0]
    else:
        if(ex.Message.Contains("System.OutOfMemoryException")):
        _receivedBytes = new byte[0]
        //LogWriter.WriteToErrorLog(MethodBase.GetCurrentMethod().DeclaringType.Name + GeneralConstants.COLON +
        // MethodBase.GetCurrentMethod().Name + GeneralConstants.COLON + ex.Message)