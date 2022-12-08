using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;
using System.Data;
using System.Data.SqlClient;

namespace WebApplicationMVCDPOnlineIcerikUreticisi.Models
{
    public class DP
    {
        public static string connectionString = @"Server=LAPTOP-1NP5U72T; Database= OnlineİcerikUreticisi; Integrated Security = true;";

        public static void ExecuteWReturn(string procadi, DynamicParameters param = null)
        {
            using (SqlConnection baglanti = new SqlConnection(connectionString))
            {
                baglanti.Open();
                baglanti.Execute(procadi, param, commandType: CommandType.StoredProcedure);

            }
        }

        public static T ExecuteReturnScalar<T>(string procadi, DynamicParameters param = null)
        {
            using (SqlConnection baglanti = new SqlConnection(connectionString))


            {

                baglanti.Open();
                return (T)Convert.ChangeType
                (baglanti.ExecuteScalar(procadi, param, commandType: CommandType.StoredProcedure), typeof(T));

            }

        }


        public static IEnumerable<T> ReturnList<T>(string procadi, DynamicParameters param = null)

        {

            using (SqlConnection baglanti = new SqlConnection(connectionString))
            {
                baglanti.Open();
                return baglanti.Query<T>(procadi, param, commandType: CommandType.StoredProcedure);
            }

        }
    }
}