<%@ Page Title="" Language="C#" MasterPageFile="~/Exam/Exam.master" AutoEventWireup="true" CodeFile="Instration.aspx.cs" Inherits="Instration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <p>
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label>
    </p>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="General Instruction" 
                    Font-Bold="True" Font-Size="Large" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" 
                    Text="1. Total duration of examination is 30 minutes." Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="2. The clock will be set at the server. The countdown timer in the top center of screen 
will display the remaining time available for you to complete the examination. " 
                    Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" 
                    Text="3. The Question Palette displayed on the right side of screen." 
                    Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="4. There Will be 30 Question." 
                    Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="5. All Question Are Compulsory." 
                    Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" 
                    Text="6. All Question are OBJECTIVE multiple Choice." Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" 
                    Text="7. Click On the answer then Click to NEXT botton." Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="8. Then go to Next Question." 
                    Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" 
                    Text="9. After 30 Question result Will be show." Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" 
                    Text="10. Please Logout to Come back Home page." Font-Bold="True" 
                    Font-Size="Small"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Next" 
            Height="35px" Width="70px" />
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
   
</asp:Content>

