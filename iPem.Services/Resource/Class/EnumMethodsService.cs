﻿using iPem.Core;
using iPem.Core.Caching;
using iPem.Core.Domain.Resource;
using iPem.Core.Enum;
using iPem.Data.Repository.Resource;
using iPem.Services.Common;
using System;
using System.Collections.Generic;

namespace iPem.Services.Resource {
    public partial class EnumMethodsService : IEnumMethodsService {

        #region Fields

        private readonly IEnumMethodsRepository _enumMethodsRepository;
        private readonly ICacheManager _cacheManager;

        #endregion

        #region Ctor

        /// <summary>
        /// Ctor
        /// </summary>
        public EnumMethodsService(
            IEnumMethodsRepository enumMethodsRepository,
            ICacheManager cacheManager) {
            this._enumMethodsRepository = enumMethodsRepository;
            this._cacheManager = cacheManager;
        }

        #endregion

        #region Methods

        public EnumMethods GetEnumMethods(int id) {
            return _enumMethodsRepository.GetEntity(id);
        }

        public IPagedList<EnumMethods> GetEnumMethods(EnmMethodType type, string comment, int pageIndex = 0, int pageSize = int.MaxValue) {
            List<EnumMethods> result = null;
            if(_cacheManager.IsSet(GlobalCacheKeys.Rs_EnumMethodsRepository)) {
                var all = _cacheManager.Get<List<EnumMethods>>(GlobalCacheKeys.Rs_EnumMethodsRepository);
                result = all.FindAll(m => m.TypeId == (int)type && m.Comment == comment);
            } else {
                result = _enumMethodsRepository.GetEntities(type, comment);
            }

            return new PagedList<EnumMethods>(result, pageIndex, pageSize);
        }

        public IPagedList<EnumMethods> GetAllEnumMethods(int pageIndex = 0, int pageSize = int.MaxValue) {
            List<EnumMethods> result = null;
            if(_cacheManager.IsSet(GlobalCacheKeys.Rs_EnumMethodsRepository)) {
                result = _cacheManager.Get<List<EnumMethods>>(GlobalCacheKeys.Rs_EnumMethodsRepository);
            } else {
                result = _enumMethodsRepository.GetEntities();
                _cacheManager.Set<List<EnumMethods>>(GlobalCacheKeys.Rs_EnumMethodsRepository, result);
            }

            return new PagedList<EnumMethods>(result, pageIndex, pageSize);
        }

        #endregion

    }
}
