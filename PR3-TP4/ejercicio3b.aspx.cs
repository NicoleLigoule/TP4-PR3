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
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT IdLibro,IdTema,Titulo,Precio,Autor FROM Libros", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            gvTabla.DataSource = dr;
            gvTabla.DataBind();
            cn.Close();
        }
    }
}