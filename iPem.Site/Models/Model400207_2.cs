﻿using iPem.Core.NPOI;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace iPem.Site.Models {
    [Serializable]
    public class Model400207_2 {
        [ExcelDisplayName("序号")]
        public int index { get; set; }

        [ExcelDisplayName("所属区域")]
        public string area { get; set; }

        [ExcelDisplayName("所属站点")]
        public string station { get; set; }

        [ExcelIgnore]
        public string id { get; set; }

        [ExcelDisplayName("机房名称")]
        public string name { get; set; }

        [ExcelDisplayName("机房类型")]
        public string type { get; set; }

        [ExcelDisplayName("停电次数")]
        public int count { get; set; }

        [ExcelDisplayName("停电时长")]
        public string interval { get; set; }

        [JsonIgnore]
        [ExcelIgnore]
        [ScriptIgnore]
        public List<DetailModel400207_2> details { get; set; }
    }
}