<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_worker.aspx.cs" Inherits="WebApplication7.Admin_worker" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
    .navbar {
    margin-bottom: 0;
    background-color: #000000;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
    .container-fluid {
    padding: 60px 50px;
}
</style>
</head>
<body>

    <form id="form1" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <h7 class="navbar-brand" >Granite Pvt. Ltd.</h7>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      
        
        
        <li><asp:HyperLink  class="navbar-brand" ID="hpLogin" runat="server" Visible="True" Font-Size="Small" NavigateUrl="~/Admin_Order.aspx">ORDERS</asp:HyperLink></li>
        <li><asp:HyperLink class="navbar-brand" ID="hpMyProfile" runat="server" Font-Size="Small" NavigateUrl="~/Admin_worker.aspx">WORKERS</asp:HyperLink> </li>
<%--        <li><asp:HyperLink class="navbar-brand" ID="HyperLink1" runat="server" Font-Size="Small" NavigateUrl="~/Attendance.aspx">ATTENDANCE</asp:HyperLink> </li>
        --%><li><asp:HyperLink class="navbar-brand" ID="HyperLink2" runat="server" Font-Size="Small" NavigateUrl="~/Admin_revenue.aspx">PRODUCTION</asp:HyperLink> </li>
        <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="navbar-brand" Font-Size="Small" CausesValidation="false">LOGOUT</asp:LinkButton> </li>      
      </ul>
    </div>
  </div>
</nav><br /><br /><br />
    <div>
    <div class="container-fluid" align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" alternatingrowstyle-cssclass="space" rowstyle-cssclass="space" >
        <Columns>
          
          
          <asp:BoundField HeaderText="Name"  DataField="name" ItemStyle-Width="190px" ItemStyle-ForeColor="Black" ItemStyle-VerticalAlign="NotSet" ItemStyle-HorizontalAlign="Justify" />
          <asp:BoundField HeaderText="Department"  DataField="department" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="Number" DataField="phone" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="City" DataField="city" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="Joining Date" DataField="month_of_joining" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="Salary" DataField="salary" ItemStyle-Width="190px"/>
          
           
        </Columns>
        </asp:GridView><br /><br />
    </div>
    </form>
</body>
</html>
