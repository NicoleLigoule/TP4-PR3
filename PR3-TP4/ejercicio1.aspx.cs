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
        private SqlConnection cn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Viajes;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDdl();

                cargarProvinciasInicio();
            }
        }
        private void cargarProvinciasInicio()
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Provincias", cn);
            SqlDataReader dr = cmd.ExecuteReader();

            ddlProvInicio.DataSource = dr;
            ddlProvInicio.DataTextField = "NombreProvincia";
            ddlProvInicio.DataValueField = "IdProvincia";
            ddlProvInicio.DataBind();

            cn.Close();

            ddlProvInicio.Items.Insert(0,"--Seleccione una Localidad--");
        }

        private void destinoFinalProvincias()
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Provincias", cn);
            SqlDataReader dr = cmd.ExecuteReader();

            ddlProvDestino.DataSource = dr;
            ddlProvDestino.DataTextField = "NombreProvincia";
            ddlProvDestino.DataValueField = "IdProvincia";
            ddlProvDestino.DataBind();

            cn.Close();
            
            ddlProvDestino.Items.Insert(0, "--Seleccione una Localidad--");
            
            eliminarInicioDeDestino();
        }


        private void cargarDdl()
        {
            ddlLocaInicio.Items.Add("--Seleccione una Localidad--");
            ddlProvDestino.Items.Add("--Seleccione una Localidad--");
            ddlLocaDestino.Items.Add("--Seleccione una Localidad--");
        }

        protected void ddlProvInicio_SelectedIndexChanged(object sender, EventArgs e)
        {
            var seleccionProvinciaInicio=ddlProvInicio.SelectedIndex;
            if (seleccionProvinciaInicio != 0)
            {
                destinoFinalProvincias();
            }
        }

        // Elimino de ddlProvDestino el elemento seleccionado en ddlProvInicio
        private void eliminarInicioDeDestino()
        {
            string selectedValue = ddlProvInicio.SelectedValue;

            // Iterar a través de los elementos en ddlProvDestino y deshabilitar la provincia seleccionada en ddlProvInicio
            foreach (ListItem item in ddlProvDestino.Items)
            {
                if (item.Value == selectedValue)
                {
                    item.Enabled = false;
                }
            }

        }
    }
}
