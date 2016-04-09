﻿using iPem.Core;
using iPem.Core.Domain.Master;
using iPem.Core.Enum;
using System;
using System.Collections.Generic;

namespace iPem.Services.Master {
    /// <summary>
    /// IPointService interface
    /// </summary>
    public partial interface IPointService {
        IPagedList<Point> GetPointsByDevice(string device, int pageIndex = 0, int pageSize = int.MaxValue);

        IPagedList<Point> GetPointsByType(int[] types, int pageIndex = 0, int pageSize = int.MaxValue);

        IPagedList<Point> GetPointsByProtcol(int protcol, int pageIndex = 0, int pageSize = int.MaxValue);

        IPagedList<Point> GetPoints(string device, int[] types, int pageIndex = 0, int pageSize = int.MaxValue);

        IPagedList<Point> GetPoints(int pageIndex = 0, int pageSize = int.MaxValue);
    }
}