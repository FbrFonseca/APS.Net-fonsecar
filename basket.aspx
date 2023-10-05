<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="basket.aspx.cs" Inherits="Fabricio_Fonseca_10591210.basket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 85vh;
            width: 100%;
            background-color: #5584AC;
            margin: auto;
        }
        .auto-style2 {
            width: 211px;
        }
        .auto-style3 {
            width: 276px;
        }
        .auto-style4 {
            width: 100%;
            height: 20px;
            margin: auto;
        }
        .auto-style5 {
            width: 211px;
            height: 27px;
        }
        .auto-style6 {
            width: 276px;
            height: 27px;
        }
        .auto-style7 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="auto-style1">
            <table class="auto-style4">
                 <tr>
                    <td class="auto-style2" itemref="t">
                        <asp:Label ID="lblFullname" runat="server" Text="Full name: "></asp:Label>
                     </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtFullname" runat="server" Width="282px"></asp:TextBox>
                     </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPhone" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label13" runat="server" Text="Flat Tire service: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblTire" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Car Polishing service: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblPolishing" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Oil Changing service:  "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblOil" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="Lights Alignment: "></asp:Label>
                     </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblLights" runat="server"></asp:Label>
                     </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label12" runat="server" Text="Total: "></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblTotal" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label14" runat="server" Text="Total with VAT(15%): "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblTotalWithVAT" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
                    </td>
                    <td>
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                    </td>
                </tr>
            </table>
            <table class="rptTable" border="1">
                <asp:Repeater ID="rptService" runat="server">
                    <ItemTemplate>
                        <thead>
                            <tr>
                                <td>ServiceID</td>
                                <td>Fullname</td>
                                <td>Email</td>
                                <td>Phone</td>
                                <td>FlatTire</td>
                                <td>Polishing</td>
                                <td>OilChange</td>
                                <td>LightsAlignment</td>
                                <td>TotalWithVAT</td>
                            </tr>
                        </thead>
                        <tr>
                            <td><%# Eval("ServiceID")%></td>
                            <td><%# Eval("Fullname")%></td>
                            <td><%# Eval("Email")%></td>
                            <td><%# Eval("Phone")%></td>
                            <td><%# Eval("FlatTire")%></td>
                            <td><%# Eval("Polishing")%></td>
                            <td><%# Eval("OilChange")%></td>
                            <td><%# Eval("LightsAlignment")%></td>
                            <td><%# Eval("TotalWithVAT")%></td>
                        </tr>
                        </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </div>
</asp:Content>