<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Home_Regis.ascx.cs" Inherits="UserControl_Home_Regis" %>
<style type="text/css">
    .auto-style1 {
        width: 224px;
    }
</style>
<div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">Đăng ký&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Đăng nhập ngay" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Tên đăng nhập</td>
            <td>
                <asp:TextBox ID="txt_user" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txt_user"  ErrorMessage="Tên đăng nhập không được để trống">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Mật khẩu</td>
            <td>
                <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Nhập lại mật khẩu</td>
            <td>
                <asp:TextBox ID="txt_repass" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txt_pass" Operator="Equal"
                     ControlToCompare="txt_repass" runat="server" 
                     ErrorMessage="Mật khẩu chưa trùng khớp"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Email</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="i'm not a robot!"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Đăng ký mới" Width="164px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
