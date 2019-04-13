using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace aw_im
{
    public class cn
    {
        private static string con_sql = @"Data Source=intelimundo.liec.com.mx;Initial Catalog=bd_im;User ID=desarrollo;Password=D3s4rr01l0";
        private static string con_postgreSQL = @"Server=localhost;Port=5432; User Id = development; Password=dev_.0;Database = im";

        public static string cn_SQL
        {
            get
            {
                return con_sql;
            }
        }

        public static string cn_postgreSQL
        {
            get
            {
                return con_postgreSQL;
            }
        }
    }
}