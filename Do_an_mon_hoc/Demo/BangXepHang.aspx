<%@ Page Title="" Language="C#" MasterPageFile="~/Demo/MasterPage.master" AutoEventWireup="true" CodeFile="BangXepHang.aspx.cs" Inherits="Demo_BangXepHang" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .music:hover {
            text-decoration: none;
            font-weight: bold;
        }
    </style>
    <div class="container">
        <div class="d-flex flex-column">
            <h3 class="mt-3">Bảng xếp hạng</h3>
            <div class="my-1" style="border-bottom: 1px solid gray;"></div>
            <ul class="list-unstyled">
                <li class="mb-4 ml-1">
                    <asp:Repeater runat="server" ID="rpt_listitem">
                        <ItemTemplate>
                            <div class="d-flex flex-row">
                                <img src='<%#"../img/" + Eval("ANHCASI")%>' alt="empty" style="width: 50px; height: 50px;" class="mr-2" />
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="black" NavigateUrl="#" CssClass="my-auto a music"><%#Eval("TENBH") +" - "+ Eval("TENCASI") %></asp:HyperLink>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>

