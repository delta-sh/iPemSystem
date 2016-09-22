﻿using iPem.Core.Domain.Rs;
using System;
using System.Collections.Generic;

namespace iPem.Data.Repository.Rs {
    public partial interface IAreaRepository {

        Area GetEntity(string id);

        List<Area> GetEntities();

    }
}