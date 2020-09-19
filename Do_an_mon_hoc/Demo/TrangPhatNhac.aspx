<%@ Page Title="" Language="C#" MasterPageFile="~/Demo/MasterPage.master" AutoEventWireup="true" CodeFile="TrangPhatNhac.aspx.cs" Inherits="Demo_TrangPhatNhac" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .music:hover {
            text-decoration: none;
            font-weight: bold;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md offset-md-3">
                <asp:Repeater ID="rpt_CurrentMusic" runat="server">
                    <ItemTemplate>
                        <div class="card text-center mt-4" style="width: 60%;">
                            <div class="card-header">
                                <asp:Image ImageUrl='<%#"../img/" + Eval("Link_anh") %>' runat="server" CssClass="img-fluid" Width="60%" Height="60%" />
                            </div>
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("TenCaSi")%></h5>
                                <p class="card-text"><%#Eval("TenBH")%></p>
                            </div>
                            <div class="card-footer">
                                <audio id="audio" controls="controls" style="width: 100%;">
                                    <source src='<%#"../Music/" + Eval("Link_BH")%>' type="audio/mp3" />
                                </audio>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="row">
            <div class="col-md offset-md-3">
                <div class="d-flex flex-column mt-1">
                    <h3 style="color: gray;">Có thể bạn muốn nghe</h3>
                    <asp:Repeater ID="rpt_ListMusic" runat="server">
                        <ItemTemplate>
                            <ul class="list-unstyled">
                                <li class="d-flex flex-row">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/img/" + Eval("Link_Anh")%>' Width="80px" Height="80px"/>
                                    <asp:HyperLink CssClass="my-auto ml-2 music" ID="HyperLink1" runat="server" Font-Underline="false" ForeColor="Black" NavigateUrl='<%#"~/Demo/TrangPhatNhac.aspx?mabh="+Eval("MABH")%>'><%#Eval("TEnBH") %></asp:HyperLink>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
