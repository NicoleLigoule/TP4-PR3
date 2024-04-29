<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio3a.aspx.cs" Inherits="PR3_TP4.ejercicio3a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>&nbsp;
                        <asp:Label runat="server" Text="Seleccionar Tema:" ID="lblSeleccionarTema"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTema" runat="server">
                            <asp:ListItem>Tema 1</asp:ListItem>
                            <asp:ListItem>Tema 2</asp:ListItem>
                            <asp:ListItem>Tema 3</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>