<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio2.aspx.cs" Inherits="PR3_TP4.ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 226px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
            <asp:Label runat="server" Text="Id Producto:" ID="IdProducto"></asp:Label>
                    </td>
                    <td><asp:DropDownList runat="server" ID="ddlProducto">
                        <asp:ListItem>igual a:</asp:ListItem>
                        <asp:ListItem>mayor a:</asp:ListItem>
                        <asp:ListItem>menor a:</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
            <asp:TextBox ID="txtIdProducto" runat="server" Width="300px" OnTextChanged="txtIdProducto_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>IdCategoria:&nbsp;&nbsp;&nbsp;</td>
                    <td> <asp:DropDownList ID="ddlCategoria" runat="server">
                        <asp:ListItem>igual a:</asp:ListItem>
                        <asp:ListItem>mayor a:</asp:ListItem>
                        <asp:ListItem>menor a:</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtIdCategoria" runat="server" Width="300px" OnTextChanged="txtIdCategoria_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnQuitarFiltro" runat="server" Text="Quitar filtro" OnClick="btnQuitarFiltro_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="gvtabla" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
<script>
    document.getElementById('<%= txtIdProducto.ClientID %>').addEventListener('input', function () {
        this.value = this.value.replace(/[^0-9]/g, '');
    });
</script>
<script>
    document.getElementById('<%= txtIdCategoria.ClientID %>').addEventListener('input', function () {
        this.value = this.value.replace(/[^0-9]/g, '');
    });
</script>
