<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Home_Login.ascx.cs" Inherits="UserControl_Home_Login" %>
<style type="text/css">
    .auto-style1 {
        width: 303px;
    }
    .auto-style2 {
        width: 167px;
    }
</style>
<div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Đăng nhập</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Đăng ký" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Tên đăng nhâp:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>Tên đăng nhập không chính xác</td>
        </tr>
        <tr>
            <td class="auto-style2">Mật khẩu:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" Width="199px"></asp:TextBox>
            </td>
            <td>Mật khẩu không chính xác</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Đăng nhập" Width="199px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
