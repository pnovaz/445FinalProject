<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ImageVerifier.aspx.cs" Inherits="finalprojectpart1.Account.ImageVerifier" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h5>Please verify that you are a human in order to create an account.<br />
        </h5>
    </hgroup>
    <asp:Image ID="verifyImage" runat="server" Width="125px" Height="40px" />
    <br />

    <asp:Label ID="imageLabel" runat="server" Text="Enter the characters in the image:" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <br />
    <asp:TextBox ID="enteredCaptcha" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="verificationButton" runat="server" OnClick="verificationButton_Click" Text="Verify" /><br /><br />
    <asp:Label ID="verificationError" runat="server" Font-Size="Large" ForeColor="Red" Text="Incorrect verification code" Visible="False"></asp:Label>
</asp:Content>