<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>
            <asp:Image ID="Image1" runat="server" BorderStyle="Dotted" Height="159px" ImageAlign="Right" ImageUrl="/Images/myphoto.png" Width="125px" />
            Harshil Maniar</h1>
        <p class="lead">Hello, I am a student of Computer Science &amp; Engineering at Indus Univeristy, Rancharda.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Introduction</h2>
            <p>
                This is my ASP.Net website which I have made for my sem 7 project.

            </p>
            <p>
                &nbsp;<a class="btn btn-default" href="https://github.com/harshil1507/ASPproject">Github link for this project »</a></p>
        </div>
        <div class="col-md-4">
            <h2>Contact </h2>
            <p>
                You can find more information on how to contact me in the Contact section.</p>
            <p>
                <a class="btn btn-default" href="/Contact.aspx">Press here to Contact me »</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Project Inquiry</h2>
            <p>
                Head over to the Inquiry section for availing a free estimation of your project with preferred technology.
            </p>
            <p>
                <a class="btn btn-default" href="/Inquiry.aspx">Get a free estimation now &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
