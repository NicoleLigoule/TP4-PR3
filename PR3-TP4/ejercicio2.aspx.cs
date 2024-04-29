﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PR3_TP4
{
    public partial class ejercicio2 : System.Web.UI.Page
    {
        private SqlConnection cn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Neptuno;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            gvtabla.DataSource = dr;
            gvtabla.DataBind();
            cn.Close();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (txtIdProducto.Text == "" && txtIdCategoria.Text != "") { filtraridCategorias(); }

            if (txtIdProducto.Text != "" && txtIdCategoria.Text == "") { filtrarPorIdProducto(); }
        }

        protected void filtrarPorIdProducto()
        {
            string idProducto = txtIdProducto.Text.Trim();
            string operador = ddlProducto.SelectedValue;

            string condition = "";
            switch (operador)
            {
                case "igual a:":
                    condition = "=";
                    break;
                case "mayor a:":
                    condition = ">";
                    break;
                case "menor a:":
                    condition = "<";
                    break;
                default:
                    condition = "=";
                    break;
            }
            string query = "SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos WHERE IdProducto " + condition + " @IdProducto";

            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                cmd.Parameters.AddWithValue("@IdProducto", idProducto);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                gvtabla.DataSource = dr;
                gvtabla.DataBind();
                cn.Close();
            }

        }
        protected void filtraridCategorias()
        {
            string comparacion = "=";
            if (ddlCategoria.Text == "mayor a:") { comparacion = ">"; }
            if (ddlCategoria.Text == "menor a:") { comparacion = "<"; }
            int numero = int.Parse(txtIdCategoria.Text);
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos WHERE IdCategoría" + comparacion + "" + numero + "", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            gvtabla.DataSource = dr;
            gvtabla.DataBind();
            cn.Close();
        }
    }
}