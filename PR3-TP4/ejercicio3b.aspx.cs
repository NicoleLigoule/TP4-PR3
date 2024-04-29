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
            if (!IsPostBack)
            {

               string tema = HttpContext.Current.Items["ddlTema"] as string;
            
                int idtema =1;
                if (tema == "Tema 1") { idtema = 1; }
                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT IdLibro,IdTema,Titulo,Precio,Autor FROM Libros where IdTema=" + idtema+"", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                gvTabla.DataSource = dr;
                gvTabla.DataBind();
                cn.Close();
            }
        }

        protected void gvTabla_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}