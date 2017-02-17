<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="PSD_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 15px;
        }
        .style3
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="About Online Examination" 
                    Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" 
                    Text="As a part of preparation for online examination, an ‘Online Sample Test’ examination shall be made available on same website." 
                    Font-Bold="False" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" 
                    Text="Link to access Online Sample Test (demo Examination) is available, only after login with registered username and password." 
                    Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" 
                    Text="The Online Sample Test (demo Examination) is only available to applicants appearing for the first paper of .NET examination. Applicants exempted from the first paper of Ph.D. entrance examination will not be able to access this Online Sample Test." 
                    Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" 
                    Text="Access to this Online Sample Test (demo Examination) does not validate the acceptance of your application by the Java . After acceptance/approval of the application, applicant will receive the confirmation email." 
                    Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" 
                    Text="This Online Sample Test (demo Examination) is intended, to give experience of the navigation, look and feel of the online test to the applicants." 
                    Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <p><a href="mailto:Email-boby_bonish@yahoo.com"> Email ID :  boby_bonish@yahoo.com</a></p>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    
                <asp:Label ID="Label9" runat="server" Text="MOb - 9855908009" 
                    Font-Size="Medium"></asp:Label>
                    
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Fax No - 01765509200" 
                    Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>

</asp:Content>

