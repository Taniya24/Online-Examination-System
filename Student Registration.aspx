<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Student Registration.aspx.cs" Inherits="Student_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <style type="text/css">
        .style1
        {
            height: 33px;
        }
        .style2
        {
            height: 34px;
        }
        .style3
        {
            height: 68px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div align="center">
<table class="style1" width="80%">
    <tr>
        <td colspan="2" align="center">
           <h1> STUDENT REGISTRATION FORM</h1></td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
           <h3> Name</h3></td>
        <td class="style3">
            <asp:TextBox ID="txtname"   runat="server" 
                Height="25px" Width="141px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Insert The Name"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <h3>Last Name</h3></td>
        <td>
            <asp:TextBox ID="txtlastname" runat="server" 
             Height="25px" Width="141px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="Please Insert The Last Name"></asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
           <h3> Father Name</h3></td>
        <td>
            <asp:TextBox ID="txtfathername"  runat="server" 
             Height="25px" Width="141px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfathername" ErrorMessage="Please Insert The Father Name"></asp:RequiredFieldValidator>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
           <h3> DOB</h3></td>
        <td>
            <asp:DropDownList ID="ddlday" runat="server">
            </asp:DropDownList>
&nbsp;
            <asp:DropDownList ID="ddlmonth" runat="server">
            </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlyear" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
           <h3> Address</h3></td>
        <td>
            <asp:TextBox ID="txtaddress"  runat="server" 
            Height="60px" Width="170px" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please Insert The Address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <h3>Email ID</h3></td>
        <td>
            <asp:TextBox ID="txtemailid" runat="server" 
             Height="25px" Width="141px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemailid" ErrorMessage="Please Insert The Email"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
           <h3> Gender</h3></td>
        <td>
            <asp:RadioButtonList ID="rdbgender" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <h3>Country</h3></td>
        <td>
            <asp:DropDownList ID="ddlcountry" runat="server" Height="19px" Width="129px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <h3>Course</h3> </td>
        <td>
            <asp:DropDownList ID="ddlcourseid" runat="server" Height="19px" Width="129px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="btnregister" runat="server" Text="Register" 
                onclick="btnregister_Click" Height="49px" Width="131px" />
        </td>
        <td>
            &nbsp; </td>
    </tr>
    </table>
</div>
        <br/>
        <br/>
        <br/>
        <br/>

        <br/>

</asp:Content>

