<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyNow.aspx.cs" Inherits="WebApplication7.WebForm1" %>

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
  
body 
{
    margin-top:100px;
  font-family: 'open sans';
  overflow-x: hidden; }


.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
 
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px;
  color:Black;
  font-size:larger;
  
   }
  
.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */

      .active
      {
          width: 289px;
      }

  </style>
</head>
<body>
  
   
    <form id="form1" runat="server">
  
   
    <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/back.png" 
            Height="50px" Width="40px" CausesValidation="false" 
            onclick="ImageButton1_Click" > </asp:ImageButton>&nbsp;
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
             
          
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     <asp:Label ID="lbName" runat="server" Visible="false" ForeColor="White" class="navbar-brand"></asp:Label>
           
      <ul class="nav navbar-nav navbar-right">
         <li><asp:HyperLink ID="hpHome" runat="server" class="navbar-brand" Visible="True" Font-Size="Small" NavigateUrl="~/Default.aspx">HOME</asp:HyperLink></li>
        
        
        <li><asp:HyperLink  class="navbar-brand" ID="hpLogin" runat="server" Visible="True" Font-Size="Small" NavigateUrl="~/Login.aspx">LOGIN</asp:HyperLink></li>
        <li><asp:HyperLink class="navbar-brand" ID="hpMyProfile" runat="server" Visible="False" Font-Size="Small" NavigateUrl="~/UserProfile.aspx">MY PROFILE</asp:HyperLink> </li>
         <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="navbar-brand" Visible="False" Font-Size="Small" CausesValidation="false">LOGOUT</asp:LinkButton> </li>
      </ul>
    </div>
  </div>
</nav>
<div class="body">
		<div class="container">
			<div class="row">
				<div class="preview col-md-6" >
                  
						  <div class="preview-pic tab-content tab-pane active" id="pic-1">
                              <asp:Image ID="imgOrderImage" runat="server" CssClass="img-responsive" width="100%"/> </div>
				  
                  </div>
                  
                 <div class="details col-md-6 left">
                     <h2><asp:Label ID="tbpProducTitle" runat="server" ForeColor="Black" ></asp:Label></h2>		
                     <h4>
                         <asp:Label ID="tbSlabOrTile" runat="server" Text="Label"></asp:Label></h4> 
                     <h4>Size:
                         <asp:Label ID="tbSize" runat="server" Text="Label"></asp:Label>
                     </h4>
                     <h4>Pirce:
                         <asp:Label ID="tbPrice" runat="server" Text="Label"></asp:Label></h4>
                         <h4>Deliver to:
                         <asp:Label ID="tbNameOfCustomer" runat="server" Text="Label"></asp:Label></h4>
                         <h4>Shipping Address : 
                     <asp:Label ID="tbShipAddress" runat="server" Text="Label"></asp:Label></h4>

                     <asp:Button ID="btnPayment" runat="server" Text="Confirm Order" 
                                CssClass="add-to-cart btn btn-default"  
                                Height="53px" Width="177px" onclick="btnPayment_Click"/>
                     
                    </div>

                    </div>
                    </div>
                    </div>
</form>
</body>
</html>
