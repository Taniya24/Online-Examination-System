<%@ Page Title="" Language="C#" MasterPageFile="~/Exam/Exam.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam_Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="lbltimer" runat="server" Font-Bold="true" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="tick" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </center>
    <table class="style1">
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="lblQuestionheading" runat="server" Text="Question"></asp:Label>
            &nbsp;<asp:Label ID="lblSno" runat="server" Text="" ForeColor="#cc0000"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                &nbsp;</td>
            <td colspan="3">
                
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="lblA" runat="server" Text="A" ForeColor="#cc0000"></asp:Label>
            </td>
            <td colspan="3">
                <asp:RadioButton ID="RadioButtonA" runat="server" GroupName="Option" Text="" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="lblB" runat="server" Text="B" ForeColor="#cc0000"></asp:Label>
            </td>
            <td colspan="3">
                <asp:RadioButton ID="RadioButtonB" runat="server" GroupName="Option" Text="" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="lblC" runat="server" Text="C" ForeColor="#cc0000"></asp:Label>
            </td>
            <td colspan="3">
                <asp:RadioButton ID="RadioButtonC" runat="server" GroupName="Option" Text="" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="lblD" runat="server" Text="D" ForeColor="#cc0000"></asp:Label>
            </td>
            <td colspan="3">
                <asp:RadioButton ID="RadioButtonD" runat="server" GroupName="Option" Text="" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnNext1" runat="server"  Text="Next" OnClick="btnNext1_Click" CssClass="buttons" />
               &nbsp;</td>
            
            <td>
                &nbsp;</td>
        </tr>
    </table>
<%--<center>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
      <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
                </asp:Timer>
    <div>
        <asp:UpdatePanel id="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        <asp:Label  ID="lbltimer" runat ="server" Font-Bold="true" Font-Names="Arial" Font-Size ="X-Large" ForeColor ="Yellow"></asp:Label>
        </ContentTemplate>
        <Triggers>
        <asp:AsyncPostBackTrigger  ControlID="Timer1" EventName="tick"/>
        </Triggers>
       
        </asp:UpdatePanel>
    </div>
</center>

    <table class="style1">
        <tr>
            <td class="style5" align="right" colspan="2">
                <asp:Button ID="btnlogout" runat="server" onclick="btnlogout_Click" 
                    Text="Logout" />
            </td>
        </tr>
        <tr>
            <td class="style2" align="center">
                <asp:Label ID="lblQuestionheading" runat="server" Text="Question"></asp:Label>
                <asp:Label ID="lblSno" runat="server" Text=""></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3" align="right">
              
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:Label ID="Label4" runat="server" Text="A"></asp:Label>
            </td>
            <td class="style3">
                <asp:RadioButton ID="RadioButtonA" runat="server" GroupName="option" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:Label ID="Label5" runat="server" Text="B"></asp:Label>
            </td>
            <td class="style3">
                <asp:RadioButton ID="RadioButtonB" runat="server" GroupName="option"/>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:Label ID="Label6" runat="server" Text="C"></asp:Label>
            </td>
            <td class="style3">
                <asp:RadioButton ID="RadioButtonC" runat="server" GroupName="option"/>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:Label ID="Label7" runat="server" Text="D"></asp:Label>
            </td>
            <td class="style3">
                <asp:RadioButton ID="RadioButtonD" runat="server" GroupName="option"/>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btnnext" runat="server" Text="Next" onclick="btnnext_Click" 
                    Height="41px" Width="84px" />
            </td>
        </tr>
    </table>--%>
</asp:Content>

