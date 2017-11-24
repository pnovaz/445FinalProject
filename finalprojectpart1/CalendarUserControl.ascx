<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalendarUserControl.ascx.cs" Inherits="finalprojectpart1.CalendarUserControl" %>
<script runat="server">
    protected void Calendar1_SelectionChanged(object sender, System.EventArgs e)
    {
        Label1.Text = "Your selected Date is: " + Calendar1.SelectedDate.ToShortDateString();
    }
</script>

<h4><b>User Control: Calendar to Plan your Trip</b></h4>

<asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="Orange"><b></b></asp:Label>
<br /><br />
<asp:Calendar ID ="Calendar1" runat="server" BackColor="Beige" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>