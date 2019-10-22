<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="checklist.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div><h3>Checklist</h3>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
        <asp:ListItem>Practical File</asp:ListItem>
        <asp:ListItem>5 webpages</asp:ListItem>
        <asp:ListItem>Databse connectivity</asp:ListItem>
        <asp:ListItem>Controls</asp:ListItem>
        <asp:ListItem>Validators</asp:ListItem>
        
    </asp:CheckBoxList>


        <h3>Rate my website out of 10</h3>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
    </asp:RadioButtonList>
        <br />
        <asp:Button class="btn btn-default" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />

</div>
</asp:Content>
