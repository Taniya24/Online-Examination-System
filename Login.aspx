<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" class="style2">
                <asp:Label ID="Label1" runat="server" Text="Login Form" Font-Bold="True" 
                    Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="User ID" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="char">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                    Text="LOGIN" Height="35px" Width="70px" />
            </td>
        </tr>
    </table>
</asp:Content>

