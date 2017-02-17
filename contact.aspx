<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 65px;
        }
        .style3
        {
            height: 40px;
        }
        .style4
        {
            height: 104px;
        }
        .style5
        {
            height: 103px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Contact Us" Font-Size="XX-Large" 
                    Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="OnlineExamination.com Pvt.Ltd" 
                    Font-Size="X-Large" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="Cooporate Office:" Font-Size="Large" 
                    Font-Underline="True"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Plot No 14 Road No 2" 
                    Font-Bold="True" Font-Size="Small"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Chander Vihar,Tilak Nagar" 
                    Font-Bold="True" Font-Size="Small"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="New Delhi 110015" Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" Text="Mob: 8470029222" Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label7" runat="server" Text="Registred office:" Font-Size="Large" 
                    Font-Underline="True"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="B-173 Sector 2" Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Noida,Near Sector-15 Metro station" 
                    Font-Bold="True" Font-Size="Small"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Uttar pradesh" Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server" Text="Mob: 9855908009" Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

