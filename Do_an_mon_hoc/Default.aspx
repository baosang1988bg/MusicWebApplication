<%@ Page Title="" Language="C#" MasterPageFile="~/Demo/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="my_rpt" runat="server">
        <ItemTemplate>
            <asp:HyperLink runat="server" NavigateUrl='<%#"~/Demo/CaSi.aspx?macasi="+Eval("Macasi")%>'>
                <%#Eval("tencasi")%></asp:HyperLink>
            <br/>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

