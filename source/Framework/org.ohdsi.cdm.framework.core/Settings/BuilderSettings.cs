﻿using System.Data;
using org.ohdsi.cdm.framework.data.DbLayer;
using org.ohdsi.cdm.framework.shared.Extensions;

namespace org.ohdsi.cdm.framework.core
{
   public class BuilderSettings
   {
      #region Variables

      private readonly DbBuilder dbBuilder;
      #endregion

      #region Properties

      public int? Id { get; private set; }

      public int? BuildingId { get; set; }
      public int MaxDegreeOfParallelism { get; set; }
      public int BatchSize { get; set; }
      public string Folder { get; set; }
      public string MachineName { get; private set; }
      
      public bool IsLead { get; private set; }
      public bool IsNew { get; private set; }

      public string Version
      {
         get { return "1.8.1.0"; }
      }
      #endregion

      #region Constructor
      public BuilderSettings(string machineName)
      {
         MachineName = machineName;
         dbBuilder = new DbBuilder(Settings.Current.Building.BuilderConnectionString);
      }
      #endregion

      #region Methods
      private void SetFrom(IDataReader reader)
      {
         Id = reader.GetInt("Id").Value;

         BuildingId = reader.GetInt("BuildingId");
         MaxDegreeOfParallelism = reader.GetInt("MaxDegreeOfParallelism").Value;
         BatchSize = reader.GetInt("BatchSize").Value;
         Folder = reader.GetString("Folder");
         IsNew = false;
      }

      public void Load()
      {
         foreach (var dataReader in dbBuilder.LoadSettings(MachineName, Version))
         {
            SetFrom(dataReader);
         }

         if (!Id.HasValue)
         {
            Id = dbBuilder.CreateSettings(MachineName, Folder, MaxDegreeOfParallelism, BatchSize, Version);
            IsNew = true;
         }
      }

      public void Save()
      {
         dbBuilder.UpdateSettings(Id.Value, MachineName, BuildingId.Value, Folder, MaxDegreeOfParallelism, BatchSize, Version);
         IsLead = dbBuilder.IsLead(Id.Value, BuildingId.Value);
      }
      #endregion
   }
}
