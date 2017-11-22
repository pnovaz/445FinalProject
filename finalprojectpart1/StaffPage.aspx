<%@ Page Language="C#"    MasterPageFile="~/Site.Master"  AutoEventWireup ="true" CodeBehind="StaffPage.aspx.cs" Inherits="finalprojectpart1.StaffPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    
        <h1>Staff Page</h1>
    <div>
        <% Response.Write("Hello " + Context.User.Identity.Name + ", "); %>
        This page contains the information for staff to access.
    
    </div>
        </div>

</asp:Content>
