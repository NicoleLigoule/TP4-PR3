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
                cargarProvinciasInicio();
                cargarDdl();
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

            ddlProvInicio.Items.Insert(0, "--Seleccione una Provincia--");
        }

        private void cargarDdl()
        {
            ddlLocaInicio.Items.Add("--Seleccione una Localidad--");
            ddlProvDestino.Items.Add("--Seleccione una Provincia--");
            ddlLocaDestino.Items.Add("--Seleccione una Localidad--");
        }

        protected void ddlProvInicio_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlProvInicio.SelectedIndex != 0)
            {
                cargarLocalidadesInicio(ddlProvInicio.SelectedValue);
                cargarProvinciasDestino();
            }
        }

        private void cargarLocalidadesInicio(string idProvincia)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Localidades WHERE IdProvincia = @IdProvincia", cn);
            cmd.Parameters.AddWithValue("@IdProvincia", idProvincia);
            SqlDataReader dr = cmd.ExecuteReader();

            ddlLocaInicio.DataSource = dr;
            ddlLocaInicio.DataTextField = "NombreLocalidad";
            ddlLocaInicio.DataValueField = "IdLocalidad";
            ddlLocaInicio.DataBind();

            cn.Close();

            ddlLocaInicio.Items.Insert(0, "--Seleccione una Localidad--");
        }

        private void cargarProvinciasDestino()
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Provincias WHERE IdProvincia NOT IN (@IdProvInicio)", cn);
            cmd.Parameters.AddWithValue("@IdProvInicio", ddlProvInicio.SelectedValue);
            SqlDataReader dr = cmd.ExecuteReader();

            ddlProvDestino.DataSource = dr;
            ddlProvDestino.DataTextField = "NombreProvincia";
            ddlProvDestino.DataValueField = "IdProvincia";
            ddlProvDestino.DataBind();

            cn.Close();

            ddlProvDestino.Items.Insert(0, "--Seleccione una Provincia--");
        }

        protected void ddlProvDestino_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlProvDestino.SelectedIndex != 0)
            {
                cargarLocalidadesDestino(ddlProvDestino.SelectedValue);
            }
        }

        private void cargarLocalidadesDestino(string idProvincia)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Localidades WHERE IdProvincia = @IdProvincia", cn);
            cmd.Parameters.AddWithValue("@IdProvincia", idProvincia);
            SqlDataReader dr = cmd.ExecuteReader();

            ddlLocaDestino.DataSource = dr;
            ddlLocaDestino.DataTextField = "NombreLocalidad";
            ddlLocaDestino.DataValueField = "IdLocalidad";
            ddlLocaDestino.DataBind();

            cn.Close();

            ddlLocaDestino.Items.Insert(0, "--Seleccione una Localidad--");
        }
    }
}
