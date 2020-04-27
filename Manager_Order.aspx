<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager_Order.aspx.cs" Inherits="WebApplication7.WebForm4" %>

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
.space td {
border-color:white;
border-style: solid;
border-bottom-width: 20px
}
ol.progtrckr {
    margin: 0;
    padding: 0;
    list-style-type none;
}

ol.progtrckr li {
    display: inline-block;
    text-align: center;
    line-height: 3.5em;
}

ol.progtrckr[data-progtrckr-steps="2"] li { width: 49%; }
ol.progtrckr[data-progtrckr-steps="3"] li { width: 33%; }
ol.progtrckr[data-progtrckr-steps="4"] li { width: 24%; }
ol.progtrckr[data-progtrckr-steps="5"] li { width: 19%; }
ol.progtrckr[data-progtrckr-steps="6"] li { width: 14%; }
ol.progtrckr[data-progtrckr-steps="7"] li { width: 14%; }
ol.progtrckr[data-progtrckr-steps="8"] li { width: 12%; }
ol.progtrckr[data-progtrckr-steps="9"] li { width: 11%; }

ol.progtrckr li.progtrckr-done {
    color: black;
    border-bottom: 4px solid yellowgreen;
}
ol.progtrckr li.progtrckr-todo {
    color: silver; 
    border-bottom: 4px solid silver;
}

ol.progtrckr li:after {
    content: "\00a0\00a0";
}
ol.progtrckr li:before {
    position: relative;
    bottom: -2.5em;
    float: left;
    left: 50%;
    line-height: 1em;
}
ol.progtrckr li.progtrckr-done:before {
    content: "\2713";
    color: white;
    background-color: yellowgreen;
    height: 2.2em;
    width: 2.2em;
    line-height: 2.2em;
    border: none;
    border-radius: 2.2em;
}
ol.progtrckr li.progtrckr-todo:before {
    content: "\039F";
    color: silver;
    background-color: white;
    font-size: 2.2em;
    bottom: -1.2em;
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
      
        
        
        <li><asp:HyperLink  class="navbar-brand" ID="hpLogin" runat="server" Visible="True" Font-Size="Small" NavigateUrl="~/Manager_Order.aspx">ORDERS</asp:HyperLink></li>
        <li><asp:HyperLink class="navbar-brand" ID="hpMyProfile" runat="server" Font-Size="Small" NavigateUrl="~/Manager_Worker.aspx">WORKERS</asp:HyperLink> </li>
        <%--<li><asp:HyperLink class="navbar-brand" ID="HyperLink1" runat="server" Font-Size="Small" NavigateUrl="~/Attendance.aspx">ATTENDANCE</asp:HyperLink> </li>--%>
        <li><asp:HyperLink class="navbar-brand" ID="HyperLink2" runat="server" Font-Size="Small" NavigateUrl="~/Revenue.aspx">PRODUCTION</asp:HyperLink> </li>

         <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="navbar-brand" Font-Size="Small" CausesValidation="false">LOGOUT</asp:LinkButton> </li>      
      </ul>
    </div>
  </div>
</nav><br /><br /><br />

    <div class="container-fluid" align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" alternatingrowstyle-cssclass="space" rowstyle-cssclass="space" OnRowCommand="Tracking" >
        <Columns>
          <asp:ImageField HeaderText="" DataImageUrlField="image" ControlStyle-Width="100"  ControlStyle-Height="100" />
          <asp:BoundField HeaderText="url" DataField="image" Visible="false" />
          <asp:BoundField HeaderText="TYPE"  DataField="type" ItemStyle-Width="190px" ItemStyle-ForeColor="Black" ItemStyle-VerticalAlign="NotSet" ItemStyle-HorizontalAlign="Justify" />
          <asp:BoundField HeaderText="SIZE"  DataField="size" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="PRICE" DataField="price" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="DATE" DataField="orderDate" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="SHIPPING ADDRESS" DataField="ship_address" ItemStyle-Width="190px"/>
          <asp:ButtonField ImageUrl="~/download.png" ButtonType="Image"  ControlStyle-Width="50"  ControlStyle-Height="50" />
           
        </Columns>
        </asp:GridView>
        
       
   
    <div align="center" id="track" runat="server">
      <ol id="Ol1" runat="server" class="progtrckr" data-progtrckr-steps="6">
     <li id="placed" class="progtrckr-done" runat="server">Order Placed</li><!--
   --><li id="unloading" class="progtrckr-todo" runat="server">Unloaded</li><!--
 --><li id="hammering" class="progtrckr-todo" runat="server">Hammering</li><!--
 --><li id="machineCutting" class="progtrckr-todo" runat="server">Cutting</li><!--
 --><li id="polishing" class="progtrckr-todo" runat="server">Polished</li><!--
 --><li id="packing" class="progtrckr-todo" runat="server">Packed</li><!--
 --><li id="loaded" class="progtrckr-todo" runat="server">Loaded </li>
</ol>
 </div><br /><br />
        <asp:Button ID="btShowAll" runat="server" Text="Show All" 
            onclick="btShowAll_Click" Visible="false"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="updateTrackStage" runat="server" Text="Update Track Stage" 
            onclick="updateTrackStage_Click" />
    &nbsp;&nbsp;
        <asp:DropDownList ID="trackList" runat="server" Visible="false" 
            onselectedindexchanged="trackList_SelectedIndexChanged" 
            AutoPostBack="True">
            <asp:ListItem Value="0">--Select--</asp:ListItem>
            <asp:ListItem Value="1">Unloaded</asp:ListItem>
             <asp:ListItem Value="2">Hammered</asp:ListItem>
              <asp:ListItem Value="3">Machine Cut</asp:ListItem>
               <asp:ListItem Value="4">Polished</asp:ListItem>
                <asp:ListItem Value="5">Packed</asp:ListItem>
                 <asp:ListItem Value="6">Loaded</asp:ListItem>
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
