<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblInicio" runat="server" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" Text="DESTINO INICIO"></asp:Label>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProvInicio" runat="server" Font-Bold="True" Text="PROVINCIA:"></asp:Label>
                &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlProvInicio" runat="server">
                        <asp:ListItem>-- Seleccionar --</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLocInicio" runat="server" Font-Bold="True" Text="LOCALIDADES:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlLocInicio" runat="server">
                        <asp:ListItem>-- Seleccionar --</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFinal" runat="server" Font-Underline="True" Text="DESTINO FINAL"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProvincia" runat="server" Font-Bold="True" Text="PROVINCIA:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProvincia" runat="server">
                        <asp:ListItem>-- Seleccionar --</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
           <%-- <tr>
                <td>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>--%>
            <tr>
                <td>
                    <asp:Label ID="lblLocalidad" runat="server" Font-Bold="True" Text="LOCALIDAD:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlLocalidad" runat="server">
                        <asp:ListItem>-- Seleccionar --</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
