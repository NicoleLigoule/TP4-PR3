﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PR3_TP4
{
    public partial class ejercicio3a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lblibros_Click(object sender, EventArgs e)
        {
            string temaSeleccionado = ddlTema.SelectedValue;
            Server.Transfer("ejercicio3b.aspx?tema=" + HttpUtility.UrlEncode(temaSeleccionado));
        }
    }
}