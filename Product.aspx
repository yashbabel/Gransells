<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication7.Product" %>

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
	 body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
.jumbotron {
   
    color: #fff;
    padding: 0px 0px;
    font-family: Montserrat, sans-serif;
  }
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
    .bg-grey {
    background-color: #f6f6f6;
}
   .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #000000;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
.carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  
/*****************globals*************/
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
                              <asp:Image ID="Image1" runat="server" CssClass="img-responsive" width="100%"/> </div>
				  
                  </div>
                  
                 <div class="details col-md-6 left">
                     <h2><asp:Label ID="Label2" runat="server" ForeColor="Black" ></asp:Label></h2>
						
						<p class="product-description">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
                        
                    <div>
                   
                        <asp:Label ID="Label1" runat="server" Text="Select for Slab or Tile " ForeColor="#FF9900" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                   
        
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="ddComapanyFilter_SelectedIndexChanged"
            AutoPostBack="True">
                            
            <asp:ListItem Selected="True" Value="0">--option--</asp:ListItem>
            <asp:ListItem Value="1">Slab</asp:ListItem>
            <asp:ListItem Value="2">Tiles</asp:ListItem>
        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Slab or Tile" ForeColor="Red" ControlToValidate="DropDownList1" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
                        

                   <br />
                        <asp:Label ID="lbPpsf" runat="server" Text="Price per Square Feet   " ForeColor="#FF9900" Font-Size="Large" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="tilesPrice" runat="server" Visible="false" Font-Size="Large" ForeColor="Black" Font-Bold="True"></asp:Label><br />
                        
                        <asp:Label ID="lbSelect" runat="server" Text="Select height & width" ForeColor="#FF9900" Font-Size="Large" Visible="False"></asp:Label>
                        <asp:DropDownList ID="slabPriceHeight" runat="server" 
                            
                            Visible="False" 
                            onselectedindexchanged="slabPriceHeight_SelectedIndexChanged" 
                            AutoPostBack="True">
                            <asp:ListItem Value="0" >--select--</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="6.5">6.5</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="7.5">7.5</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="8.5">8.5</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="9.5">9.5</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="10.5">10.5</asp:ListItem>
                            <asp:ListItem Value="11">11</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="SlabPriceWidth" runat="server" Visible="false" 
                            onselectedindexchanged="SlabPriceWidth_SelectedIndexChanged" 
                            AutoPostBack="True" >
                            <asp:ListItem value="0">--select--</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="2.25">2.25</asp:ListItem>
                            <asp:ListItem Value="2.5">2.5</asp:ListItem>
                            <asp:ListItem Value="2.75">2.75</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                           
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Height" ForeColor="Red" InitialValue="0" ControlToValidate="slabPriceHeight" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Width"   ForeColor="Red" InitialValue="0" ControlToValidate="SlabPriceWidth" Display="Dynamic"></asp:RequiredFieldValidator>
                        
                        <asp:Label ID="lbPeicesReq" runat="server" Text="Enter pieces reqiured" ForeColor="#FF9900" Font-Size="Large" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                            Visible="False" AutoPostBack="True" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"   runat="server" ErrorMessage="Only numbers" ControlToValidate="TextBox1" ValidationExpression="[0-9]*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is Required" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator><br />

<asp:Label ID="lbPrice" runat="server" Text="Price" ForeColor="#FF9900" Font-Size="Large" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lbrs" runat="server" Text="₹" ForeColor="#FF9900" Font-Size="Large" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="TotalPrice" runat="server" Visible="False" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Black"></asp:Label>
                        <br />
                    </div>
                    <br />
                    <div class="row">
						<div class="action">
                            
                            <asp:Button ID="Button2" runat="server" Text="Buy Now" 
                                CssClass="add-to-cart btn btn-default" onclick="Button2_Click" 
                                Height="53px" Width="177px"/>
							
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>

  
    </form>
  
</body>
</html>
