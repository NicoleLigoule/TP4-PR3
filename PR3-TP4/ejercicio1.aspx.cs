using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PR3_TP4
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) {
            
            SqlConnection cn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Viajes;Integrated Security=True");
       
            cn.Open();

            SqlCommand cmd = new SqlCommand("Select * from Provincias", cn);
         
            SqlDataReader dr = cmd.ExecuteReader();

            ddlProvInicio.DataSource = dr;

            ddlProvInicio.DataTextField = "NombreProvincia";
            ddlProvInicio.DataValueField = "IdProvincia";

            ddlProvInicio.DataBind();


            cn.Close();
        }
        }
    }
}