<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Admin_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    
    <table style="width: 100%">
        <tr>
            <td style="width: 531px">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" align="center" style="height: 40px">
                            <asp:Label ID="lblupdate" runat="server" Text="Update Panel" Font-Bold="True" 
                                Font-Size="Medium"></asp:Label>
                                <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" style="height: 56px">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            &nbsp;</td>
                        <td style="width: 1240px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label3" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Insert The Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label4" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="Please Insert The Last Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label5" runat="server" Text="Father Name" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:TextBox ID="txtfathername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfathername" ErrorMessage="Please Insert The Father Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label6" runat="server" Text="DOB" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                            dd/mm/yy<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdob" ErrorMessage="Please Insert The DOB"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label7" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:TextBox ID="txtaddress" runat="server" Height="73px" TextMode="MultiLine" 
                                Width="196px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please Insert The Address"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label8" runat="server" Text="Email ID" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemailid" ErrorMessage="Please Insert The Email ID"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label9" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Insert The password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label10" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:DropDownList ID="ddlgender" runat="server">
                                <asp:ListItem>-SELECT-</asp:ListItem>
                                <asp:ListItem>MALE</asp:ListItem>
                                <asp:ListItem>FEMALE</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label11" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:DropDownList ID="ddlcountry" runat="server" Height="21px" Width="123px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label12" runat="server" Text="Roll" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:DropDownList ID="ddlroll" runat="server" Height="21px" Width="123px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            <asp:Label ID="Label13" runat="server" Text="Course" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="width: 1240px">
                            <asp:DropDownList ID="ddlcourse" runat="server" Height="21px" Width="123px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            &nbsp;</td>
                        <td style="width: 1240px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 234px" align="center">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                                ID="btnupdate" runat="server" Text="Update" onclick="btnupdate_Click" 
                                Height="44px" Width="97px" />
                            &nbsp;</td>
                        <td style="width: 1240px" align="left">
                            <asp:Button ID="btnregister" runat="server" Height="44px" Text="Register" 
                                Width="100px" onclick="btnregister_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 234px">
                            &nbsp;</td>
                        <td style="width: 1240px">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td style="width: 327px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 673px; height: 39px;" align="center">
                            <asp:Label ID="lblsp" runat="server" Text="Search Panel" Font-Bold="True" 
                                Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 673px; height: 56px;" align="center">
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 673px">
                            <asp:Label ID="Label14" runat="server" Text="Student ID" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="txtstudentid" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 673px" align="center">
                            <asp:Button ID="btnsearch" runat="server" CausesValidation="false" Text="SEARCH" 
                                onclick="btnsearch_Click" />
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    
    
</asp:Content>

