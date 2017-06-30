﻿using iPem.Core.Enum;
using System;
using System.Xml;

namespace iPem.Site.Models.BInterface {
    public partial class GetDevConfPackage {
        public string FsuId { get; set; }

        public string DeviceId { get; set; }

        public virtual string ToXml() {
            var xmlDoc = new XmlDocument();
            var node = xmlDoc.CreateXmlDeclaration("1.0", "UTF-8", "");
            xmlDoc.AppendChild(node);

            var root = xmlDoc.CreateElement("Request");
            xmlDoc.AppendChild(root);

            var PK_Type = xmlDoc.CreateElement("PK_Type");
            root.AppendChild(PK_Type);

            var Name = xmlDoc.CreateElement("Name");
            Name.InnerText = EnmBIPackType.GET_DEV_CONF.ToString();
            PK_Type.AppendChild(Name);

            var Info = xmlDoc.CreateElement("Info");
            root.AppendChild(Info);

            var FsuID = xmlDoc.CreateElement("FSUID");
            FsuID.InnerText = this.FsuId ?? "";
            Info.AppendChild(FsuID);

            var DeviceID = xmlDoc.CreateElement("DeviceID");
            DeviceID.InnerText = this.DeviceId ?? "";
            Info.AppendChild(DeviceID);

            return xmlDoc.OuterXml;
        }
    }
}