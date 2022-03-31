import socket
import struct
import sys
import lzo



multicast_group = '233.1.2.5'
server_address = ('',34074)

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

a = ""
b = []
c = 0

# Receive/respond loop
while True:
    print('\nwaiting to receive message')
    data, address = sock.recvfrom(512)

    print('received {} bytes from {}'.format(
        len(data), address))
#    print(data.decode("utf-8"))data
#    z = lzo.decompress(data)
    
    
 #   for i in data:
 #       print(data[i])
    
    
    print(data.decode('utf-16' , 'ignore'))

    
    print('sending acknowledgement to', address)
    sock.sendto(b'ack', address)
    
    a += str(data)
    b.append(len(data))
    c += 1



































