<%@ Page Title="Home Page"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="finalprojectpart1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <style>
        #servicesTable {
    font-family: "Trebuchet MS", Arial, Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#servicesTable td,
#servicesTable th {
    border: 1px solid #ddd;
    padding: 8px;
}

#servicesTable tr:nth-child(even){
    background-color: #f2f2f2;
}

#servicesTable tr:hover{
    background-color: #ddd;
}

            #servicesTable th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: sienna;
                color: white;
            }

    .welcome{
            color: firebrick;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            float:right;
           text-decoration-color:blueviolet;
         
        }

    .welcomePage{
        color: tomato;
        font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }
    </style>

 <div class="content-wrapper">
       <asp:Label ID="welcomeMessage" runat="server" CssClass="welcome"></asp:Label>
    
            <hgroup class="title">

                <h2 class ="welcomePage"><b>Team Gucci's Services Page</b><br /></h2>
            </hgroup>
            <h3>Description</h3>
            This website describes the web services and local components developed by <b>Petra Novakovic</b>. 
            <br />
     </div>




</asp:Content>


