# -*- coding: utf-8 -*-
"""
Created on Thu Dec 12 14:01:30 2019

@author: Administrator
"""
import socket
import struct
import sys
import pandas as pd
import lzo
import io



multicast_group = '233.1.2.5'
server_address = ('',34330)

# Create the socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Bind to the server address
sock.bind(server_address)

# Tell the operating system to add the socket to
# the multicast group on all interfaces.
group = socket.inet_aton(multicast_group)
mreq = struct.pack('8sL', group, socket.INADDR_ANY)
sock.setsockopt(
    socket.IPPROTO_IP,
    socket.IP_ADD_MEMBERSHIP,
    mreq)

message_typea = ""
msg_lena = ""
stream_ida = ""
seq_noa = ""
b = []
c = 0

# Receive/respond loop
while True:
    print('\nwaiting to receive message')
    data, address = sock.recvfrom(512)

    print('received {} bytes from {}'.format(
        len(data), address))

    data_code = struct.unpack('c',data[8:9])    
    print(data_code)
    
    msg_len,stream_id,seq_no = struct.unpack('hhi',data[:8])
    
    
    print('sending acknowledgement to', address)
    sock.sendto(b'ack', address)
    
    message_typea += str(data_code) + " "
    msg_lena += str(msg_len ) + " "
    stream_ida += str(stream_id) + " "
    seq_noa += str(seq_no) + " "
    c += 1
    
    