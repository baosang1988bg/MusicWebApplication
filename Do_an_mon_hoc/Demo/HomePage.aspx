<%@ Page Title="" Language="C#" MasterPageFile="~/Demo/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Demo_Demo1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-floid mt-4">
        <div class="row bg-dark">
            <div class="col-sm">
                <div class="carousel slide" id="carouselNewSong" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselNewSong" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselNewSong" data-slide-to="1"></li>
                        <li data-target="#carouselNewSong" data-slide-to="2"></li>
                        <li data-target="#carouselNewSong" data-slide-to="3"></li>
                        <li data-target="#carouselNewSong" data-slide-to="4"></li>
                    </ol>
                    <div class="carousel-inner">
                        <asp:Repeater ID="rpt_carousel_active" runat="server">
                            <ItemTemplate>
                                <div class="carousel-item active">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "~/img/" + Eval("ANHCASI")%>' CssClass="d-block mx-auto" Width="400" Height="400" />
                                    <div class="carousel-caption">
                                        <h4><%#Eval("TENCASI")%></h4>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:Repeater ID="rpt_carousel" runat="server">
                            <ItemTemplate>
                                <div class="carousel-item">
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# "~/img/" + Eval("ANHCASI")%>' CssClass="d-block mx-auto" Width="400" Height="400" />
                                    <div class="carousel-caption">
                                        <h4><%#Eval("TENCASI")%></h4>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <a class="carousel-control-prev" href="#carouselNewSong" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span></a>
                        <a class="carousel-control-next" href="#carouselNewSong" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex flex-column mt-sm-4 bg-dark">
            <h5>Bài Hát</h5>
            <asp:Repeater runat="server" ID="rpt_baihat">
                <ItemTemplate>
                    <div class="card">
                        <asp:ImageButton runat="server" ImageUrl="..." PostBackUrl="#" CssClass="card-img-top" Width="80" Height="80" />
                        <div class="card-body">
                            <div class="card-text">
                            </div>
                        </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

