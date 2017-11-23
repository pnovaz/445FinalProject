<%@ Page Title="Home Page"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="finalprojectpart1._Default" %>

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


    .headers{
        color: darkorange;
        font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }
    </style>
   
 <div class="content-wrapper" >
       <asp:Label ID="welcomeMessage" runat="server" CssClass="welcome"></asp:Label>
    
            <hgroup class="title">

                <h2 class ="welcomePage"><b>Team Gucci's Services Page</b><br /></h2>
            </hgroup>
            <h2 >Description</h2>
            This website describes the web services and local components developed by <b>Petra Novakovic and Jennifer Krause</b>. 
            <br />

     <h2 class="headers">As a member you can..</h2>
     <ul>
         <li>Perform a search for an item on Walmart.com that conveniently displays whether the item is available in stores or online, the price of the item, description, and more.</li>
         <li>Enter a zipcode of the area you plan on shopping in to return the crime data statistics around that shopping area.</li>
         <li>Find the nearest store by entering the name of the store you want to visit and the zipcode; we will display the store information for you and nearest location.</li>
         <li>Conveniently retrieve store hours for any store you plan on visiting.</li>
         <li><b>Will you make it?</b> Let us help you determine whether you can make it to your desired store in time before it closes by assessing the traffic situation for you.</li>
         <li><b>Who's Here?</b> Determine if any of your friends are at a certain store.</li>

     </ul>
       <h2 class="headers">As staff you can..</h2>
     <ul>
         <li>Authorize user access to the staff page by adding credentials to an xml file.</li>
     </ul>
    <img src="http://i66.tinypic.com/2enm2vn.jpg" border="0"/>

     </div>




</asp:Content>


