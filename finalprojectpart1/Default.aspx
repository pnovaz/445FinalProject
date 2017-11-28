<%@ Page Title="Home Page"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="finalprojectpart1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <style>

        body{
         background-repeat: repeat; 
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
        font-family: 'Lucida Bright';
    }


    .headers{
        color: darkorange;
        font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }

    .different{
        font-family: Impact;
    }
        .auto-style1 {
            height: 57px;
        }
    </style>
   
 <div class="content-wrapper" >
       <br />
       <asp:Label ID="welcomeMessage" runat="server" CssClass="welcome"></asp:Label>
    
            <br />
       <asp:Label ID="counterMessage" runat="server" CssClass="welcome"></asp:Label>
       <br />
    
            <hgroup class="title">

                <h2 class ="welcomePage"><b>Team Gucci's Services Page</b><br /></h2>
            </hgroup>
            <h2 >Description</h2>
            This website describes the web services and local components developed by <b>Petra Novakovic and Jennifer Krause</b>. 
            <br />

     <h2 class="headers">As a member you can..</h2>
     <ul>
         <li>Perform a search for an item on Walmart.com that conveniently displays whether the item is available in stores or online, the price of the item, description, and more.</li>
         <li>Assess the current traffic information for the Phoenix-Metro Valley.</li>
         <li>Find the nearest store by entering the name of the store you want to visit and the zipcode; we will display the store information for you and nearest location.</li>
         <li>Conveniently retrieve store hours for any store you plan on visiting.</li>
         <li><b>Will you make it?</b> Let us help you determine whether you can make it to your desired store in time before it closes by assessing the traffic situation for you.</li>
         <li>Register now to access all of these services and more!</li>

     </ul>
       <h2 class="headers">As a staff member you can..</h2>
     <ul>
         <li>Authorize user access to the staff page by adding credentials to an xml file.</li>
         <li>CSE 445 TA has been granted access and should proceed to Staff Login with the credentials provided by Dr. Chen. The TA has also been registered to access the member page. Please access both Member and Staff pages.</li>
     </ul>
    <img src="http://i66.tinypic.com/2enm2vn.jpg" border="0"/>

    
    
     <h3 class="different">Who developed what?</h3>
    <h5>Here is the breakdown of the contributions of each teammate for this project.</h5>
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
		<td class="auto-style1">Must be a member to access</td>
        <td>Uses Walmart's Search Request API that allows the user to enter an item in the search bar and browse a list of returned items with their descriptions and price information provided by Walmart.</td>
	</tr>
        <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Find Store Nearest You</td>	
		<td class="auto-style1">Must be a member to access</td>
        <td>Enter a store name and zipcode to find the store you are searching for nearest you.</td>
	</tr>
         <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Calendar User Control on Member Page</td>	
		<td class="auto-style1"><a href="Account/Login.aspx">Login to access Member Page</a></td>
        <td>A convenient calendar is provided on the member page as a user control to help the user plan their trip.</td>
	</tr>
         <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Image Verifier Service Implementation</td>	
		<td class="auto-style1"><a href="Account/Register.aspx">Register Page</a></td>
        <td>When registering for a member account to access our services, you will be prompted to enter the contents of a captcha. This service was provided by ASU.</td>
	</tr>
         <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Cookies, Login/Logout Functionality</td>	
		<td class="auto-style1"><a href="Account/Login.aspx">Log in</a></td>
        <td>After logging in you will have the option to sign out. Also, your username will be displayed in all welcome messages as you peruse the site.</td>
	</tr>
            <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Member Page</td>	
		<td class="auto-style1"><a href="Account/Login.aspx">Log in to access Member Page</a></td>
        <td>Created member page, added my contributed services, and added the user control to the member page.</td>
	</tr>
             <tr>
		<td class="auto-style1">Petra Novakovic</td>
        <td class="auto-style1">Home Page</td>	
		<td class="auto-style1"><a href="Default.aspx">Home Page(Current Page)</a></td>
        <td class="auto-style1">Spent time designing the page(background images, fonts, etc), adding content, table functionality, and more. </td>
	</tr>
           <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">DLL library for encrypting passwords in Member.xml and Staff.xml</td>	
		<td class="auto-style1">Enacted when a new member registers for an account</td>
        <td>When user registers for a member account their information is stored in Member.xml and their password is encrytped. </td>
	</tr>

        <tr>
		<td>Petra Novakovic</td>
        <td class="auto-style3">Google Map with Traffic Layer</td>	
		<td class="auto-style1">Must be member to access</td>
        <td>An embedded google map that uses Google API and shows current traffic in the valley. </td>
	</tr>

        <tr>
            <td>Jennifer Krause</td>
            <td class="auto-style3">Staff Page</td>
            <td class="auto-style1"><a href="Account/Login.aspx">Log in to access Staff Page</a></td>
            <td>Only users which have logged in as staff may access this page, which is used to add other staff members into Staff.xml.</td>
        </tr>
        <tr>
            <td>Jennifer Krause</td>
            <td class="auto-style3">Global.asax Visitor Counter</td>
            <td class="auto-style1">Enacted whenever a new user visits the site</td>
            <td>Whenever a new user visits the site, the Visitor Counter is incremented by 1. You can view it on this welcome page.</td>
        </tr>
        <tr>
            <td>Jennifer Krause</td>
            <td class="auto-style3">Hours Calculator</td>
            <td class="auto-style1">Must be a member to access</td>
            <td>Uses Yelp's API to access the hours of a given store at a given address and displays them in a table.</td>
        </tr>
        <tr>
            <td>Jennifer Krause</td>
            <td class="auto-style3">Will You Make It?</td>
            <td class="auto-style1">Must be a member to access</td>
            <td>Uses a combination of Google Matrix API and the Hours Calculator to give the user information about their estimated time of travel given mode of travel, destination, and current location.</td>
        </tr>


    </table>
       
      </div>
</asp:Content>


