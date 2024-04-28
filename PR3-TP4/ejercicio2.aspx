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
            &nbsp;<asp:DropDownList runat="server" ID="ddlProducto"></asp:DropDownList>
            <br />
            <br />
            Id Categoria: <asp:DropDownList ID="ddlCategoria" runat="server">
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
