﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using iPem.Core.Domain.Master;
using iPem.Data.Common;

namespace iPem.Data.Repository.Master {
    public partial class MenuRepository : IMenuRepository {

        #region Fields

        private readonly string _databaseConnectionString;

        #endregion

        #region Ctor

        /// <summary>
        /// Ctor
        /// </summary>
        public MenuRepository(string databaseConnectionString) {
            this._databaseConnectionString = databaseConnectionString;
        }

        #endregion

        #region Methods

        public virtual Menu GetEntity(int id) {
            SqlParameter[] parms = { new SqlParameter("@Id", id) };

            Menu entity = null;
            using(var rdr = SqlHelper.ExecuteReader(this._databaseConnectionString, CommandType.Text, SqlCommands_Cs.Sql_Menu_Repository_GetEntity, parms)) {
                if(rdr.Read()) {
                    entity = new Menu();
                    entity.Id = SqlTypeConverter.DBNullInt32Handler(rdr["Id"]);
                    entity.Name = SqlTypeConverter.DBNullStringHandler(rdr["Name"]);
                    entity.Icon = SqlTypeConverter.DBNullStringHandler(rdr["Icon"]);
                    entity.Url = SqlTypeConverter.DBNullStringHandler(rdr["Url"]);
                    entity.Comment = SqlTypeConverter.DBNullStringHandler(rdr["Comment"]);
                    entity.Index = SqlTypeConverter.DBNullInt32Handler(rdr["Index"]);
                    entity.LastId = SqlTypeConverter.DBNullInt32Handler(rdr["LastId"]);
                    entity.Enabled = SqlTypeConverter.DBNullBooleanHandler(rdr["Enabled"]);
                }
            }
            return entity;
        }

        public virtual List<Menu> GetEntities() {
            var entities = new List<Menu>();
            using (var rdr = SqlHelper.ExecuteReader(this._databaseConnectionString, CommandType.Text, SqlCommands_Cs.Sql_Menu_Repository_GetEntities, null)) {
                while (rdr.Read()) {
                    var entity = new Menu();
                    entity.Id = SqlTypeConverter.DBNullInt32Handler(rdr["Id"]);
                    entity.Name = SqlTypeConverter.DBNullStringHandler(rdr["Name"]);
                    entity.Icon = SqlTypeConverter.DBNullStringHandler(rdr["Icon"]);
                    entity.Url = SqlTypeConverter.DBNullStringHandler(rdr["Url"]);
                    entity.Comment = SqlTypeConverter.DBNullStringHandler(rdr["Comment"]);
                    entity.Index = SqlTypeConverter.DBNullInt32Handler(rdr["Index"]);
                    entity.LastId = SqlTypeConverter.DBNullInt32Handler(rdr["LastId"]);
                    entity.Enabled = SqlTypeConverter.DBNullBooleanHandler(rdr["Enabled"]);
                    entities.Add(entity);
                }
            }
            return entities;
        }

        public virtual void Insert(Menu entity) {
            Insert(new List<Menu>() { entity });
        }

        public virtual void Insert(List<Menu> entities) {
            SqlParameter[] parms = { new SqlParameter("@Id", SqlDbType.Int),
                                     new SqlParameter("@Name", SqlDbType.VarChar,100),
                                     new SqlParameter("@Icon", SqlDbType.VarChar,512),
                                     new SqlParameter("@Url", SqlDbType.VarChar,512),
                                     new SqlParameter("@Comment", SqlDbType.VarChar,512),
                                     new SqlParameter("@Index", SqlDbType.Int),
                                     new SqlParameter("@LastId", SqlDbType.Int),
                                     new SqlParameter("@Enabled", SqlDbType.Bit) };

            using (var conn = new SqlConnection(this._databaseConnectionString)) {
                conn.Open();
                var trans = conn.BeginTransaction(IsolationLevel.ReadCommitted);
                try {
                    foreach (var entity in entities) {
                        parms[0].Value = SqlTypeConverter.DBNullInt32Checker(entity.Id);
                        parms[1].Value = SqlTypeConverter.DBNullStringChecker(entity.Name);
                        parms[2].Value = SqlTypeConverter.DBNullStringChecker(entity.Icon);
                        parms[3].Value = SqlTypeConverter.DBNullStringChecker(entity.Url);
                        parms[4].Value = SqlTypeConverter.DBNullStringChecker(entity.Comment);
                        parms[5].Value = SqlTypeConverter.DBNullInt32Checker(entity.Index);
                        parms[6].Value = SqlTypeConverter.DBNullInt32Checker(entity.LastId);
                        parms[7].Value = entity.Enabled;
                        SqlHelper.ExecuteNonQuery(trans, CommandType.Text, SqlCommands_Cs.Sql_Menu_Repository_Insert, parms);
                    }
                    trans.Commit();
                } catch {
                    trans.Rollback();
                    throw;
                }
            }
        }

        public virtual void Update(Menu entity) {
            Update(new List<Menu>() { entity });
        }

        public virtual void Update(List<Menu> entities) {
            SqlParameter[] parms = { new SqlParameter("@Id", SqlDbType.Int),
                                     new SqlParameter("@Name", SqlDbType.VarChar,100),
                                     new SqlParameter("@Icon", SqlDbType.VarChar,512),
                                     new SqlParameter("@Url", SqlDbType.VarChar,512),
                                     new SqlParameter("@Comment", SqlDbType.VarChar,512),
                                     new SqlParameter("@Index", SqlDbType.Int),
                                     new SqlParameter("@LastId", SqlDbType.Int),
                                     new SqlParameter("@Enabled", SqlDbType.Bit) };

            using(var conn = new SqlConnection(this._databaseConnectionString)) {
                conn.Open();
                var trans = conn.BeginTransaction(IsolationLevel.ReadCommitted);
                try {
                    foreach(var entity in entities) {
                        parms[0].Value = SqlTypeConverter.DBNullInt32Checker(entity.Id);
                        parms[1].Value = SqlTypeConverter.DBNullStringChecker(entity.Name);
                        parms[2].Value = SqlTypeConverter.DBNullStringChecker(entity.Icon);
                        parms[3].Value = SqlTypeConverter.DBNullStringChecker(entity.Url);
                        parms[4].Value = SqlTypeConverter.DBNullStringChecker(entity.Comment);
                        parms[5].Value = SqlTypeConverter.DBNullInt32Checker(entity.Index);
                        parms[6].Value = SqlTypeConverter.DBNullInt32Checker(entity.LastId);
                        parms[7].Value = entity.Enabled;
                        SqlHelper.ExecuteNonQuery(trans, CommandType.Text, SqlCommands_Cs.Sql_Menu_Repository_Update, parms);
                    }
                    trans.Commit();
                } catch {
                    trans.Rollback();
                    throw;
                }
            }
        }

        public virtual void Delete(Menu entity) {
            Delete(new List<Menu>() { entity });
        }

        public virtual void Delete(List<Menu> entities) {
            SqlParameter[] parms = { new SqlParameter("@Id", SqlDbType.Int) };
            using (var conn = new SqlConnection(this._databaseConnectionString)) {
                conn.Open();
                var trans = conn.BeginTransaction(IsolationLevel.ReadCommitted);
                try {
                    foreach (var entity in entities) {
                        parms[0].Value = SqlTypeConverter.DBNullInt32Checker(entity.Id);
                        SqlHelper.ExecuteNonQuery(trans, CommandType.Text, SqlCommands_Cs.Sql_Menu_Repository_Delete, parms);
                    }
                    trans.Commit();
                } catch {
                    trans.Rollback();
                    throw;
                }
            }
        }

        #endregion

    }
}
