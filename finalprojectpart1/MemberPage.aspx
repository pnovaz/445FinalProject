<%@ Page Language="C#"  MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="MemberPage.aspx.cs" Inherits="finalprojectpart1.MemberPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <div class="jumbotron">
     

    
        <h1>Member Page</h1>
    <div>
        <% Response.Write("Hello " + Context.User.Identity.Name + ", "); %>
        This page contains the information for members to access.
    
    </div>
        </div>


</asp:Content>