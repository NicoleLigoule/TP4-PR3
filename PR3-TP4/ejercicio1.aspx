<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="PR3_TP4.ejercicio1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <script src="path/to/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />  <asp:UpdatePanel ID="UpdatePanel1" runat="server">  <ContentTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Underline="True" Text="DESTINO INICIO"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="PROVINCIA: "></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlProvInicio" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProvInicio_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="LOCALIDAD: "></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlLocaInicio" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Underline="True" Text="DESTINO FINAL"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="PROVINCIA:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlProvDestino" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvDestino_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="LOCALIDAD: "></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlLocaDestino" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ddlProvInicio" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>

    </form>
</body>
</html>
