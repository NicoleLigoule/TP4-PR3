using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PR3_TP4
{
    public partial class ejercicio3b : System.Web.UI.Page
    {
        private SqlConnection cn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Libreria;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}