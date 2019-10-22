<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inquiry.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Inquiry</h2>
        I will get back to you as soon as possible. Please give your contact details and project description in the fields given below.
    
    <br />
        <asp:Table ID="Table1" runat="server" Height="187px" Width="612px">
            <asp:TableRow> 
                <asp:TableCell><asp:Label runat="server">Name</asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="TextBox1" ForeColor="Red" ErrorMessage="Please enter your name!" />
                    </asp:TableCell></asp:TableRow>
            
            <asp:TableRow> 
                <asp:TableCell>Contact</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="Textbox2" ForeColor="Red" ErrorMessage="Please enter your phone number!" />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="Red" ErrorMessage="Invalid number" ControlToValidate="TextBox2" MinimumValue="1111111111" MaximumValue="9999999999"></asp:RangeValidator>
                    </asp:TableCell></asp:TableRow>
            
            <asp:TableRow> 
                <asp:TableCell>Technology</asp:TableCell><asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Python</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>.NET</asp:ListItem>
            <asp:ListItem>Full stack</asp:ListItem>
            <asp:ListItem>Blockchain</asp:ListItem>
        </asp:DropDownList>
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell><asp:Button class="btn btn-dark" ID="Button1" runat="server" Text="Send Inquiry" OnClick="Send_inquiry"/></asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        
    
        
    </asp:Content>
