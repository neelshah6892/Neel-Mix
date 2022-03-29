using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace BroadcastApplication
{
    /// <summary>
    /// System Configuration
    /// </summary>
    [Serializable]
    public class SystemConfiguration
    {
        [XmlElement]
        public string ApplicationName { get; set; }
        [XmlElement]
        public string NseCmBroadcastIp { get; set; }
        [XmlElement]
        public int NseCmBroadcastPort { get; set; }
        [XmlElement]
        public string NseFoBroadcastIp { get; set; }
        [XmlElement]
        public int NseFoBroadcastPort { get; set; }
        [XmlElement]
        public string Gateway { get; set; }
    }
}
