<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="Demo_Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap-4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link href="construct-css.css" rel="stylesheet" />
    <link href="footer-css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="root container">
            <header class="row">
                <!--Đây là div gốc-->
                <nav class="navbar navbar-expand-lg bg-light">
                    <div class="col-sm-6 pr-sm-4">
                        <ul class="navbar nav pr-xs-2 pr-sm-3 mr-sm-3 mr-xs-2">
                            <li class="nav-item">
                                <a runat="server" class="nav-link" href="#">Trang chủ</a>
                            </li>
                            <li class="nav-item">
                                <a runat="server" class="nav-link" href="#">BXH</a>
                            </li>
                            <li class="nav-item">
                                <a runat="server" class="nav-link" href="#">Ca sĩ</a>
                            </li>
                            <li class="nav-item">
                                <a runat="server" class="nav-link" href="#">Playlist</a>
                            </li>
                            <li class="nav-item">
                                <a runat="server" class="nav-link" href="#">Bài hát</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-sm-4 form-inline mx-sm-1">
                        <input type="search" aria-label="Search" placeholder="search" class="form-control mr-sm-2 mx-xs-1" />
                        <button id="Button_Search" type="submit" runat="server" class="btn btn-outline-primary mx-sm-1">Tìm kiếm</button>
                    </div>
                    <div class="col-sm-2">
                        <div class="btn-group">
                            <button class="btn btn-outline-primary">Đăng nhập</button>
                            <button id="Button_DangNhap" runat="server" data-toggle="dropdown" type="button" class="btn btn-outline-primary dropdown-toggle dropdown-toggle-split">
                                <span class="sr-only">Toggle Data</span>
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Đăng ký</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>
            <%-- <div class="row">
                <div class="carousel slide" id="carouselNewSong" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselNewSong" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselNewSong" data-slide-to="1"></li>
                        <li data-target="#carouselNewSong" data-slide-to="2"></li>
                        <li data-target="#carouselNewSong" data-slide-to="3"></li>
                        <li data-target="#carouselNewSong" data-slide-to="4"></li>
                    </ol>
                    <div class="carousel-inner text-center">
                        <asp:Repeater ID="rpt_carousel"
                    </div>
                </div> 
            </div>--%>
            <div class="my-sm-4">
                <!--Content trang-->
                <h5>CA SĨ NỔI BẬT</h5>
                <div class="border-bottom my-2">
                </div>
                <div class="d-flex">
                    <asp:Repeater runat="server" ID="Rpt_BXH">
                        <ItemTemplate>
                            <div class="d-flex flex-row mr-sm-4">
                                <div class="d-flex flex-column" style="text-align: center;">
                                    <div>
                                        <asp:Image runat="server" ImageUrl='<%#"~/img/"+Eval("ANHCASI")%>' Width="160" Height="160" />
                                    </div>
                                    <div><%#Eval("TENCASI")%></div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="row">
                </div>
                <div class="row">
                </div>
            </div>
        </div>
        <script src="../bootstrap-4.0.0/dist/js/jquery-3.2.1.slim.min.js"></script>
        <script src="../bootstrap-4.0.0/dist/js/popper.min.js"></script>
        <script src="../bootstrap-4.0.0/dist/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
