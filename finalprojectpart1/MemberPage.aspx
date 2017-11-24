﻿<%@ Page Language="C#"  MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="MemberPage.aspx.cs" Inherits="finalprojectpart1.MemberPage" %>

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
    
        <h1 class="welcomePage">Member Page</h1>
    <div class="welcomePage">
        <% Response.Write("Hello, " + HttpContext.Current.User.Identity.Name + ". "); %>
        Access all Team Gucci Services here!
    
    </div>
        </div>


 <h3>Service Directory</h3>
    <table id="servicesTable">
    <tr>
		<th>Provider Name</th>
        <th class="auto-style3">Service/Local Component</th>
		<th class="auto-style1">TryIt Link</th>
        <th>Service Description</th>
	</tr>
	<tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Walmart Search Web Service</td>	
		<td class="auto-style1"><a href="http://webstrar20.fulton.asu.edu/page6/Default">Try Walmart Search</a></td>
        <td>Uses Walmart's Search Request API that allows the user to enter an item in the search bar and browse a list of returned items with their descriptions and price information provided by Walmart.</td>
	</tr>
        <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Find Store Nearest You</td>	
		<td class="auto-style1"><a href="http://webstrar20.fulton.asu.edu/page10/FindNearestStore.aspx">Find Store Now</a></td>
        <td>Enter a store name and zipcode to find the store you are searching for nearest you.</td>
	</tr>

  
    </table>


</asp:Content>
