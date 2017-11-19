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
        <td class="auto-style3">Image Verifier Service</td>	
		<td class="auto-style1"><a href="Account/ImageVerifier.aspx">TryIt Link</a></td>
        <td>When a user wants to create a new account, admin or member account, the user must enter the contents of a captch to proceed to the register page. This service was provided by ASU.</td>
	</tr>

        <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">DLL Hash Library/XML File Add User</td>	
		<td class="auto-style1"><a href="Account/ImageVerifier.aspx">TryIt Link</a></td>
        <td>This library is invoked when the user registers for an accunt. The user's password is encrypted using this hash library and then added to an xml file. If you can log in after registering then your information has been successfully added to the file.</td>
	</tr>
   
            <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Cookie</td>		
		<td class="auto-style1"><a href="Account/Login.aspx">TryIt Link</a></td>
        <td>When the user registers and then proceeds to login their information will be stored if they choose so. Once the user returns to the application they will be recognized if they choose to be remembered. If you close the application and open it again and a welcome message with your name appears, then your information was successfully stoerd and retrieved.</td>
	</tr>
  
    </table>
   
    


</asp:Content>


