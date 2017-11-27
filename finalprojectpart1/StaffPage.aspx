<%@ Page Language="C#"    MasterPageFile="~/Site.Master"  AutoEventWireup ="true" CodeBehind="StaffPage.aspx.cs" Inherits="finalprojectpart1.StaffPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <style>

 body{
         background-repeat: no-repeat; 
         background-image:url('http://i64.tinypic.com/214txra.png');
       
       
        }

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


    <div class="jumbotron">
    
        <h1 class="welcomePage">Staff Page</h1>
    <div class="welcomePage">
        <% Response.Write("Hello, " + HttpContext.Current.User.Identity.Name + ". "); %>
        Access all Team Gucci Staff Services here!
    </div>
        </div>
        <h3>Adding a new Staff member:</h3>
       
        <h5>
            <br />
        Enter username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Enter password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
        </h5>
        <h5>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    
        </h5>
    <h5>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="..."></asp:Label>
    
        </h5>
    <p>
        &nbsp;</p>
        

</asp:Content>
