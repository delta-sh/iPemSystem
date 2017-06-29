﻿using iPem.Core.Domain.Cs;
using iPem.Core.Enum;
using iPem.Data.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace iPem.Data.Repository.Cs {
    public partial class V_AMeasureRepository : IV_AMeasureRepository {

        #region Fields

        private readonly string _databaseConnectionString;

        #endregion

        #region Ctor

        /// <summary>
        /// Ctor
        /// </summary>
        public V_AMeasureRepository(string databaseConnectionString) {
            this._databaseConnectionString = databaseConnectionString;
        }

        #endregion

        #region Methods

        public V_AMeasure GetMeasure(string device, string signalId, string signalNumber) {
            SqlParameter[] parms = { new SqlParameter("@DeviceId", SqlDbType.VarChar, 100),
                                     new SqlParameter("@SignalId", SqlDbType.VarChar, 100),
                                     new SqlParameter("@SignalNumber", SqlDbType.VarChar, 10) };

            parms[0].Value = SqlTypeConverter.DBNullStringChecker(device);
            parms[1].Value = SqlTypeConverter.DBNullStringChecker(signalId);
            parms[2].Value = SqlTypeConverter.DBNullStringChecker(signalNumber);

            V_AMeasure entity = null;
            using (var rdr = SqlHelper.ExecuteReader(this._databaseConnectionString, CommandType.Text, SqlCommands_Cs.Sql_V_AMeasure_Repository_GetMeasure, parms)) {
                if (rdr.Read()) {
                    entity = new V_AMeasure();
                    entity.AreaId = SqlTypeConverter.DBNullStringHandler(rdr["AreaId"]);
                    entity.StationId = SqlTypeConverter.DBNullStringHandler(rdr["StationId"]);
                    entity.RoomId = SqlTypeConverter.DBNullStringHandler(rdr["RoomId"]);
                    entity.FsuId = SqlTypeConverter.DBNullStringHandler(rdr["FsuId"]);
                    entity.DeviceId = SqlTypeConverter.DBNullStringHandler(rdr["DeviceId"]);
                    entity.PointId = SqlTypeConverter.DBNullStringHandler(rdr["PointId"]);
                    entity.SignalId = SqlTypeConverter.DBNullStringHandler(rdr["SignalId"]);
                    entity.SignalNumber = SqlTypeConverter.DBNullStringHandler(rdr["SignalNumber"]);
                    entity.SignalDesc = SqlTypeConverter.DBNullStringHandler(rdr["SignalDesc"]);
                    entity.Status = SqlTypeConverter.DBNullEnmStateHandler(rdr["Status"]);
                    entity.Value = SqlTypeConverter.DBNullDoubleHandler(rdr["Value"]);
                    entity.UpdateTime = SqlTypeConverter.DBNullDateTimeHandler(rdr["UpdateTime"]);
                    if (entity.Status == EnmState.Level1) entity.Status = EnmState.Invalid;
                }
            }
            return entity;
        }

        public List<V_AMeasure> GetMeasuresInArea(string id) {
            SqlParameter[] parms = { new SqlParameter("@AreaId", SqlDbType.VarChar, 100) };
            parms[0].Value = SqlTypeConverter.DBNullStringChecker(id);

            var entities = new List<V_AMeasure>();
            using (var rdr = SqlHelper.ExecuteReader(this._databaseConnectionString, CommandType.Text, SqlCommands_Cs.Sql_V_AMeasure_Repository_GetMeasuresInArea, parms)) {
                while (rdr.Read()) {
                    var entity = new V_AMeasure();
                    entity.AreaId = SqlTypeConverter.DBNullStringHandler(rdr["AreaId"]);
                    entity.StationId = SqlTypeConverter.DBNullStringHandler(rdr["StationId"]);
                    entity.RoomId = SqlTypeConverter.DBNullStringHandler(rdr["RoomId"]);
                    entity.FsuId = SqlTypeConverter.DBNullStringHandler(rdr["FsuId"]);
                    entity.DeviceId = SqlTypeConverter.DBNullStringHandler(rdr["DeviceId"]);
                    entity.PointId = SqlTypeConverter.DBNullStringHandler(rdr["PointId"]);
                    entity.SignalId = SqlTypeConverter.DBNullStringHandler(rdr["SignalId"]);
                    entity.SignalNumber = SqlTypeConverter.DBNullStringHandler(rdr["SignalNumber"]);
                    entity.SignalDesc = SqlTypeConverter.DBNullStringHandler(rdr["SignalDesc"]);
                    entity.Status = SqlTypeConverter.DBNullEnmStateHandler(rdr["Status"]);
                    entity.Value = SqlTypeConverter.DBNullDoubleHandler(rdr["Value"]);
                    entity.UpdateTime = SqlTypeConverter.DBNullDateTimeHandler(rdr["UpdateTime"]);
                    if (entity.Status == EnmState.Level1) entity.Status = EnmState.Invalid;
                    entities.Add(entity);
                }
            }
            return entities;
        }

        public List<V_AMeasure> GetMeasuresInStation(string id) {
            SqlParameter[] parms = { new SqlParameter("@StationId", SqlDbType.VarChar, 100) };
            parms[0].Value = SqlTypeConverter.DBNullStringChecker(id);

            var entities = new List<V_AMeasure>();
            using (var rdr = SqlHelper.ExecuteReader(this._databaseConnectionString, CommandType.Text, SqlCommands_Cs.Sql_V_AMeasure_Repository_GetMeasuresInStation, parms)) {
                while (rdr.Read()) {
                    var entity = new V_AMeasure();
                    entity.AreaId = SqlTypeConverter.DBNullStringHandler(rdr["AreaId"]);
                    entity.StationId = SqlTypeConverter.DBNullStringHandler(rdr["StationId"]);
                    entity.RoomId = SqlTypeConverter.DBNullStringHandler(rdr["RoomId"]);
                    entity.FsuId = SqlTypeConverter.DBNullStringHandler(rdr["FsuId"]);
                    entity.DeviceId = SqlTypeConverter.DBNullStringHandler(rdr["DeviceId"]);
                    entity.PointId = SqlTypeConverter.DBNullStringHandler(rdr["PointId"]);
                    entity.SignalId = SqlTypeConverter.DBNullStringHandler(rdr["SignalId"]);
                    entity.SignalNumber = SqlTypeConverter.DBNullStringHandler(rdr["SignalNumber"]);
                    entity.SignalDesc = SqlTypeConverter.DBNullStringHandler(rdr["SignalDesc"]);
                    entity.Status = SqlTypeConverter.DBNullEnmStateHandler(rdr["Status"]);
                    entity.Value = SqlTypeConverter.DBNullDoubleHandler(rdr["Value"]);
                    entity.UpdateTime = SqlTypeConverter.DBNullDateTimeHandler(rdr["UpdateTime"]);
                    if (entity.Status == EnmState.Level1) entity.Status = EnmState.Invalid;
                    entities.Add(entity);
                }
            }
            return entities;
        }

        public List<V_AMeasure> GetMeasuresInRoom(string id) {
            SqlParameter[] parms = { new SqlParameter("@RoomId", SqlDbType.VarChar, 100) };
            parms[0].Value = SqlTypeConverter.DBNullStringChecker(id);

            var entities = new List<V_AMeasure>();
            using (var rdr = SqlHelper.ExecuteReader(this._databaseConnectionString, CommandType.Text, SqlCommands_Cs.Sql_V_AMeasure_Repository_GetMeasuresInRoom, parms)) {
                while (rdr.Read()) {
                    var entity = new V_AMeasure();
                    entity.AreaId = SqlTypeConverter.DBNullStringHandler(rdr["AreaId"]);
                    entity.StationId = SqlTypeConverter.DBNullStringHandler(rdr["StationId"]);
                    entity.RoomId = SqlTypeConverter.DBNullStringHandler(rdr["RoomId"]);
                    entity.FsuId = SqlTypeConverter.DBNullStringHandler(rdr["FsuId"]);
                    entity.DeviceId = SqlTypeConverter.DBNullStringHandler(rdr["DeviceId"]);
                    entity.PointId = SqlTypeConverter.DBNullStringHandler(rdr["PointId"]);
                    entity.SignalId = SqlTypeConverter.DBNullStringHandler(rdr["SignalId"]);
                    entity.SignalNumber = SqlTypeConverter.DBNullStringHandler(rdr["SignalNumber"]);
                    entity.SignalDesc = SqlTypeConverter.DBNullStringHandler(rdr["SignalDesc"]);
                    entity.Status = SqlTypeConverter.DBNullEnmStateHandler(rdr["Status"]);
                    entity.Value = SqlTypeConverter.DBNullDoubleHandler(rdr["Value"]);
                    entity.UpdateTime = SqlTypeConverter.DBNullDateTimeHandler(rdr["UpdateTime"]);
                    if (entity.Status == EnmState.Level1) entity.Status = EnmState.Invalid;
                    entities.Add(entity);
                }
            }
            return entities;
        }

        public List<V_AMeasure> GetMeasuresInDevice(string id) {
            SqlParameter[] parms = { new SqlParameter("@DeviceId", SqlDbType.VarChar, 100) };
            parms[0].Value = SqlTypeConverter.DBNullStringChecker(id);

            var entities = new List<V_AMeasure>();
            using (var rdr = SqlHelper.ExecuteReader(this._databaseConnectionString, CommandType.Text, SqlCommands_Cs.Sql_V_AMeasure_Repository_GetMeasuresInDevice, parms)) {
                while (rdr.Read()) {
                    var entity = new V_AMeasure();
                    entity.AreaId = SqlTypeConverter.DBNullStringHandler(rdr["AreaId"]);
                    entity.StationId = SqlTypeConverter.DBNullStringHandler(rdr["StationId"]);
                    entity.RoomId = SqlTypeConverter.DBNullStringHandler(rdr["RoomId"]);
                    entity.FsuId = SqlTypeConverter.DBNullStringHandler(rdr["FsuId"]);
                    entity.DeviceId = SqlTypeConverter.DBNullStringHandler(rdr["DeviceId"]);
                    entity.PointId = SqlTypeConverter.DBNullStringHandler(rdr["PointId"]);
                    entity.SignalId = SqlTypeConverter.DBNullStringHandler(rdr["SignalId"]);
                    entity.SignalNumber = SqlTypeConverter.DBNullStringHandler(rdr["SignalNumber"]);
                    entity.SignalDesc = SqlTypeConverter.DBNullStringHandler(rdr["SignalDesc"]);
                    entity.Status = SqlTypeConverter.DBNullEnmStateHandler(rdr["Status"]);
                    entity.Value = SqlTypeConverter.DBNullDoubleHandler(rdr["Value"]);
                    entity.UpdateTime = SqlTypeConverter.DBNullDateTimeHandler(rdr["UpdateTime"]);
                    if (entity.Status == EnmState.Level1) entity.Status = EnmState.Invalid;
                    entities.Add(entity);
                }
            }
            return entities;
        }

        public List<V_AMeasure> GetMeasures() {
            var entities = new List<V_AMeasure>();
            using (var rdr = SqlHelper.ExecuteReader(this._databaseConnectionString, CommandType.Text, SqlCommands_Cs.Sql_V_AMeasure_Repository_GetMeasures, null)) {
                while (rdr.Read()) {
                    var entity = new V_AMeasure();
                    entity.AreaId = SqlTypeConverter.DBNullStringHandler(rdr["AreaId"]);
                    entity.StationId = SqlTypeConverter.DBNullStringHandler(rdr["StationId"]);
                    entity.RoomId = SqlTypeConverter.DBNullStringHandler(rdr["RoomId"]);
                    entity.FsuId = SqlTypeConverter.DBNullStringHandler(rdr["FsuId"]);
                    entity.DeviceId = SqlTypeConverter.DBNullStringHandler(rdr["DeviceId"]);
                    entity.PointId = SqlTypeConverter.DBNullStringHandler(rdr["PointId"]);
                    entity.SignalId = SqlTypeConverter.DBNullStringHandler(rdr["SignalId"]);
                    entity.SignalNumber = SqlTypeConverter.DBNullStringHandler(rdr["SignalNumber"]);
                    entity.SignalDesc = SqlTypeConverter.DBNullStringHandler(rdr["SignalDesc"]);
                    entity.Status = SqlTypeConverter.DBNullEnmStateHandler(rdr["Status"]);
                    entity.Value = SqlTypeConverter.DBNullDoubleHandler(rdr["Value"]);
                    entity.UpdateTime = SqlTypeConverter.DBNullDateTimeHandler(rdr["UpdateTime"]);
                    if (entity.Status == EnmState.Level1) entity.Status = EnmState.Invalid;
                    entities.Add(entity);
                }
            }
            return entities;
        }

        #endregion
        
    }
}