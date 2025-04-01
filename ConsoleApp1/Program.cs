using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-SR1MKQK;Initial Catalog=ARPDatabase;Persist Security Info=True;User ID=sa;Password=admin123456789");
            String sql = "select * from dtUsers";
            SqlCommand command = new SqlCommand("select * from dtUsers", connection);
            connection.Open();
            // SqlDataAdapter da = new SqlDataAdapter(sql, connection);
            // System.Data.DataSet ds = new DataSet();
            // da.Fill(ds, "dtUser");
            //if (ds.Tables["dtUser"].Rows.Count == 0)
            // {

            //}
            /* else
             {
                 if (ds.Tables["dtUser"].Rows[0][1].ToString().Trim() == "admin")
                 {
                     Console.WriteLine(ds.Tables["dtUser"].Rows[0][1].ToString().Trim());
                 }
             }

              

            foreach (DataRow row in ds.Tables["dtUser"].Rows)
               {
                    Console.WriteLine("\t{0}\t{1}", row.GetString(0), row.GetString(1));
               }
*/


            SqlDataReader myReader = command.ExecuteReader();
                while (myReader.Read()) {
                    Console.WriteLine("\t{0}\t{1}",myReader.GetString(0),myReader.GetString(1));

                }

            connection.Close();
        }
    }
}
