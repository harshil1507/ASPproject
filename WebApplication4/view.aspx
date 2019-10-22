<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="WebApplication4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="GridView1" Width="369px"></asp:GridView>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="True">
    </asp:GridView>
</asp:Content>
