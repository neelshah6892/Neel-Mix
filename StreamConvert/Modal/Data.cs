using System;
using System.Net;
using System.Net.Sockets;

namespace StreamConvert.Modal
{
    class Data
    {
        Socket soc = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);

        IPEndPoint ipep = new IPEndPoint(IPAddress.Any, 34074);

        soc.Bind(ipep);

        IPAdress ip = new IPAdress.parse("233.1.2.5");
    }
}
