﻿using iPem.Core.Domain.Rs;
using iPem.Site.Models.Organization;
using System;

namespace iPem.Site.Models {
    [Serializable]
    public class PointStore<T> where T : class {
        public T Current { get; set; }

        public D_Device Device { get; set; }

        public A_Area Area { get; set; }

        public bool RssPoint { get; set; }

        public bool RssFrom { get; set; }

        public String AreaFullName { get; set; }
    }
}