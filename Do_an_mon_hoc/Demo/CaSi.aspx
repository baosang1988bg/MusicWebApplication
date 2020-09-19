<%@ Page Title="" Language="C#" MasterPageFile="~/Demo/MasterPage.master" AutoEventWireup="true" CodeFile="CaSi.aspx.cs" Inherits="Demo_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .myrow {
            background-color: darkcyan;
        }

            .myrow:hover {
                background-color: #343a40;
                font-weight: bold;
            }

        .mycolumn {
            text-align: left;
        }

        .mylink {
            font-weight: bold;
            color: gray;
        }

            .mylink:hover {
                color: #343a40;
                text-decoration: none;
            }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 mt-1">
                <asp:Repeater ID="rpt_ThongTinCaSi" runat="server">
                    <ItemTemplate>
                        <div class="d-flex flex-column">
                            <asp:ImageButton CssClass="img-fluid mt-1" runat="server" ImageUrl='<%#"../img/"+Eval("Link_Anh_Ngan") %>' />
                            <h3 class="my-sm-2">Thông tin ca sĩ:</h3>
                            <ul class="list-unstyled">
                                <li><strong>Tên ca sĩ: </strong><%#Eval("TenCaSi") %></li>
                                <li><strong>Giới tính: </strong><%#Eval("Phai") %></li>
                                <li><strong>Quê quán: </strong><%#Eval("QueQuan") %></li>
                            </ul>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-sm-6">
                <table class="table table-dark bg-dark mt-2">
                    <thead>
                        <tr class="mycolumn" style="font-size: 18px;">
                            <td class="text-left"><strong>TÊN BÀI HÁT</strong>
                            </td>
                            <td class="text-right" colspan="2"><strong>NĂM SX</strong>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_BaiHat_CaSi" runat="server">
                            <ItemTemplate>
                                <tr class="myrow">
                                    <td class="text-left">
                                        <%# Eval("TenBH")%>
                                        <td />
                                        <td class="text-right" colspan="2">
                                            <%# Eval("NamSX") %>
                                        </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <div class="d-flex flex-column">
                    <h3>Các ca sĩ khác có thể bạn quan tâm</h3>
                    <asp:Repeater ID="rpt_CaSiQuanTam" runat="server">
                        <ItemTemplate>
                            <ul class="list-unstyled ml-2">
                                <li class="d-flex flex-row">
                                    <asp:ImageButton PostBackUrl='<%#"~/Demo/CaSi.aspx?macasi=" + Eval("MaCaSi")%>' Width="80" Height="80" runat="server" CssClass="img-fluid" ImageUrl='<%#"../img/" + Eval("Link_Anh_Ngan") %>' />
                                    <asp:HyperLink CssClass="my-auto ml-sm-2 mylink" runat="server" NavigateUrl='<%#"~/Demo/CaSi.aspx?macasi=" + Eval("MaCaSi")%>'><%#Eval("TenCaSi")%></asp:HyperLink>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

