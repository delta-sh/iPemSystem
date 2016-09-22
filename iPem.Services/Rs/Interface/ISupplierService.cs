﻿using iPem.Core;
using iPem.Core.Domain.Rs;
using System;
using System.Collections.Generic;

namespace iPem.Services.Rs {
    public partial interface ISupplierService {
        Supplier GetSupplier(string id);

        IPagedList<Supplier> GetAllSuppliers(int pageIndex = 0, int pageSize = int.MaxValue);

        List<Supplier> GetAllSuppliersAsList();
    }
}