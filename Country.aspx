﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Country.aspx.cs" Inherits="Admin_Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" align="center" style="height: 34px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Entry Panel"></asp:Label>
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
                            Country</td>
                        <td>
                            <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcountry" ErrorMessage="Please Insert The Country"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" Text="ADD" onclick="btnadd_Click" 
                                Height="35px" Width="70px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnview" runat="server" CausesValidation="false" Text="VIEW" 
                                onclick="btnview_Click" Height="35px" Width="70px" />
                            <asp:GridView ID="grdcountry" runat="server">
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" align="center" style="height: 34px">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Update panel"></asp:Label>
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
                            Select</td>
                        <td>
                            <asp:DropDownList ID="ddlselect" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            New Name</td>
                        <td>
                            <asp:TextBox ID="txtnewname" runat="server"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 42px">
                            </td>
                        <td style="height: 42px">
                            &nbsp;<asp:Button ID="update" runat="server" Text="UPDATE" 
                                onclick="update_Click" Height="35px" Width="70px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btndelete" runat="server" Text="DELETE" 
                                onclick="btndelete_Click" Height="35px" Width="70px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
   
</asp:Content>

