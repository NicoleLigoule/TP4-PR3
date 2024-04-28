<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio2.aspx.cs" Inherits="PR3_TP4.ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label runat="server" Text="Id Producto:" ID="IdProducto"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            &nbsp;<asp:DropDownList runat="server" ID="ddlProducto"></asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtIdProducto" runat="server" Width="302px"></asp:TextBox>
            <br />
            <br />
            IdCategoria:&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlCategoria" runat="server">
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" />
&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
