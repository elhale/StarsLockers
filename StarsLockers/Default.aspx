<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StarsLockers._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />

    <style>
        
        .row-centered{
            text-align: center;
        }     
        
    </style>

    <div class="jumbotron">
        <h1 style="text-align:center;">STARS Locker Assignments</h1>
        <p style="text-align:center;">Locker assignments listing for STARS Center lockers (Control Key:F984)</p>
        <p style="text-align:center;">PLEASE SELECT ONE OF THE OPTIONS BELOW TO BEGIN</p>
    </div>

        
    <br />
    <br />


    <div class="row row-centered">
        <div class="col-md-12">
            <a class="btn btn-primary btn-lg" href="./Lockers/MaleLockers.aspx">Male Lockers</a>
            <a class="btn btn-primary btn-lg" href="./Lockers/FemaleLockers.aspx">Female Lockers</a>
        </div>
    </div>

</asp:Content>
