<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 42px;
        }
        .style3
        {
        }
        .style4
        {
            height: 48px;
        }
        .style5
        {
            height: 46px;
        }
        .style6
        {
            height: 41px;
        }
        .style7
        {
            height: 107px;
        }
        .style8
        {
            width: 229px;
        }
        .style9
        {
            height: 48px;
            width: 229px;
        }
        .style10
        {
            height: 46px;
            width: 229px;
        }
        .style11
        {
            height: 41px;
            width: 229px;
        }
        .style12
        {
            height: 107px;
            width: 229px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center" class="style2" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Feedback" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style9">
                <asp:Label ID="Label2" runat="server" Text="Name" Font-Bold="True"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style10">
                <asp:Label ID="Label3" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style9">
                <asp:Label ID="Label4" runat="server" Text="Mobile No" Font-Bold="True"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style11">
                <asp:Label ID="Label5" runat="server" Text="Email ID" Font-Bold="True"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style12">
                <asp:Label ID="Label6" runat="server" Text="Comment" Font-Bold="True"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtcomment" runat="server" TextMode="MultiLine" Height="67px" 
                    Width="368px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style3" colspan="2">
                <asp:Button ID="btnsubmit" runat="server" Height="46px" Text="SUBMIT" 
                    Width="95px" onclick="btnsubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

