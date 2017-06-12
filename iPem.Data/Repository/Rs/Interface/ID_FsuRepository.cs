﻿using iPem.Core.Domain.Rs;
using System;
using System.Collections.Generic;

namespace iPem.Data.Repository.Rs {
    /// <summary>
    /// Fsu信息表
    /// </summary>
    public partial interface ID_FsuRepository {
        /// <summary>
        /// 获得指定的FSU
        /// </summary>
        D_Fsu GetFsu(string id);

        /// <summary>
        /// 获得指定机房下的FSU
        /// </summary>
        List<D_Fsu> GetFsuInRoom(string id);

        /// <summary>
        /// 获得所有的FSU
        /// </summary>
        List<D_Fsu> GetFsus();

        /// <summary>
        /// 获得指定的FSU扩展信息
        /// </summary>
        D_ExtFsu GetExtFsu(string id);

        /// <summary>
        /// 获得所有的FSU扩展信息
        /// </summary>
        List<D_ExtFsu> GetExtFsus();
    }
}
