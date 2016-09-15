﻿using System;
using System.Collections.Generic;
using System.Data;
using org.ohdsi.cdm.framework.entities.Omop;

namespace org.ohdsi.cdm.framework.entities.DataReaders.v5
{
   public class CareSiteDataReader : IDataReader
   {
      private readonly IEnumerator<CareSite> enumerator;

      // A custom DataReader is implemented to prevent the need for the HashSet to be transformed to a DataTable for loading by SqlBulkCopy
      public CareSiteDataReader(List<CareSite> batch)
      {
         enumerator = batch.GetEnumerator();
      }

      public bool Read()
      {
         return enumerator.MoveNext();
      }
      
      public int FieldCount
      {
         get { return 6; }
      }

      public object GetValue(int i)
      {
         if (enumerator.Current == null) return null;

         switch (i)
         {

            case 0:
               return enumerator.Current.Id;

            case 1:
               return enumerator.Current.Name;

            case 2:
               return enumerator.Current.ConceptId;

            case 3:
               return enumerator.Current.LocationId;

            case 4:
               return enumerator.Current.SourceValue;

            case 5:
               return enumerator.Current.PlaceOfSvcSourceValue;

            default:
               throw new NotImplementedException();
         }
      }

      public string GetName(int i)
      {
         if (enumerator.Current == null) return null;

         switch (i)
         {
            case 0:
               return "Id";

            case 1:
               return "Name";

            case 2:
               return "ConceptId";

            case 3:
               return "LocationId";

            case 4:
               return "SourceValue";

            case 5:
               return "PlaceOfSvcSourceValue";

            default:
               throw new NotImplementedException();
         }
      }


      #region implementationn not required for SqlBulkCopy
      public bool NextResult()
      {
         throw new NotImplementedException();
      }

      public void Close()
      {
         throw new NotImplementedException();
      }

      public bool IsClosed
      {
         get { throw new NotImplementedException(); }
      }

      public int Depth
      {
         get { throw new NotImplementedException(); }
      }

      public DataTable GetSchemaTable()
      {
         throw new NotImplementedException();
      }

      public int RecordsAffected
      {
         get { throw new NotImplementedException(); }
      }

      public void Dispose()
      {
         throw new NotImplementedException();
      }

      public bool GetBoolean(int i)
      {
         return (bool)GetValue(i);
      }

      public byte GetByte(int i)
      {
         return (byte)GetValue(i);
      }

      public long GetBytes(int i, long fieldOffset, byte[] buffer, int bufferoffset, int length)
      {
         throw new NotImplementedException();
      }

      public char GetChar(int i)
      {
         return (char)GetValue(i);
      }

      public long GetChars(int i, long fieldoffset, char[] buffer, int bufferoffset, int length)
      {
         throw new NotImplementedException();
      }

      public IDataReader GetData(int i)
      {
         throw new NotImplementedException();
      }

      public string GetDataTypeName(int i)
      {
         throw new NotImplementedException();
      }

      public DateTime GetDateTime(int i)
      {
         return (DateTime)GetValue(i);
      }

      public decimal GetDecimal(int i)
      {
         return (decimal)GetValue(i);
      }

      public double GetDouble(int i)
      {
         return Convert.ToDouble(GetValue(i));
      }

      public Type GetFieldType(int i)
      {
         if (enumerator.Current == null) return null;

         switch (i)
         {
            case 0:
               return typeof(long);

            case 1:
               return typeof(string);

            case 2:
               return typeof(long);

            case 3:
               return typeof(long);

            case 4:
               return typeof(string);

            case 5:
               return typeof(string);

            default:
               throw new NotImplementedException();
         }
      }

      public float GetFloat(int i)
      {
         return (float)GetValue(i);
      }

      public Guid GetGuid(int i)
      {
         return (Guid)GetValue(i);
      }

      public short GetInt16(int i)
      {
         return (short)GetValue(i);
      }

      public int GetInt32(int i)
      {
         return (int)GetValue(i);
      }

      public long GetInt64(int i)
      {
         return Convert.ToInt64(GetValue(i));
      }
      
      public int GetOrdinal(string name)
      {
         throw new NotImplementedException();
      }

      public string GetString(int i)
      {
         return (string)GetValue(i);
      }

      public int GetValues(object[] values)
      {
         throw new NotImplementedException();
      }

      public bool IsDBNull(int i)
      {
         return GetValue(i) == null;
      }

      public object this[string name]
      {
         get { throw new NotImplementedException(); }
      }

      public object this[int i]
      {
         get { throw new NotImplementedException(); }
      }
      #endregion
   }
}
