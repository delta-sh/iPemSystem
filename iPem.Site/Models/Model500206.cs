﻿using iPem.Core.NPOI;
using System;

namespace iPem.Site.Models {
    [Serializable]
    public class Model500206 {
        [ExcelDisplayName("序号")]
        public int index { get; set; }

        [ExcelDisplayName("区域名称")]
        public string name { get; set; }

        [ExcelDisplayName("区域类型")]
        public string type { get; set; }

        [ExcelDisplayName("高温告警站点总数")]
        public int current { get; set; }

        [ExcelDisplayName("包含温度测点的站点总数")]
        public int last { get; set; }

        [ExcelDisplayName("温控容量合格率")]
        public string rate { get; set; }
    }
}