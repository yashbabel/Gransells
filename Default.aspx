<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication7._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

  <!-- Theme Made By www.w3schools.com -->
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
    ba
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
    padding: 30px 20px;
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
    font-size: 150px;
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

</style>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
   



<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>   
        <span class="icon-bar"></span>                     
      </button>
      <h7 class="navbar-brand" runat="server" ID="lbNameOfFirm">Granite Pvt. Ltd.</h7>
      <asp:Label ID="lbName" runat="server" Visible="false" ForeColor="White" class="navbar-brand"></asp:Label>
     
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#portfolio">PORTFOLIO</a></li>
        <li><a href="#contact">CONTACT</a></li>

        
        
        <li><asp:HyperLink  class="navbar-brand" ID="hpLogin" runat="server" Visible="True" Font-Size="Small" NavigateUrl="~/Login.aspx">LOGIN</asp:HyperLink></li>
        <li><asp:HyperLink class="navbar-brand" ID="hpMyProfile" runat="server" Visible="False" Font-Size="Small" NavigateUrl="~/UserProfile.aspx">MY PROFILE</asp:HyperLink> </li>
         <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="navbar-brand" Visible="False" Font-Size="Small" CausesValidation="false">LOGOUT</asp:LinkButton> </li>
        <%--<asp:LinkButton ID="hpLogout" runat="server" class="navbar-brand" Visible="False" Font-Size="Small" onlclick="hpLogout_Click">LinkButton</asp:LinkButton>    --%>
        <%--<asp:HyperLink class="navbar-brand" ID="hpLogout" runat="server" Visible="False" Font-Size="Small" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>      --%>
      </ul>
    </div>
  </div>
</nav>
<br>
<div class="jumbotron text-center">
 <img src="Images/replace.jpg" width="100%" />
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-10">
      <h2 style="font-family: 'Times New Roman', Times, serif; font-size: larger; font-weight: bold; font-style: italic; color: #000080">About Company Page</h2><br />
      <p style="font-family: 'Times New Roman', Times, serif; font-size:large; color: #000080" font-size: larger; font-weight: bold; font-style: italic;>Granite Pvt. Ltd. is a Granite slab manufacturing unit started at Shahjahapura. It was established in 2009,Since then it is continously running with its full capacity. Initially it started with one block Cutter, 
      three Polishing machines,a Jib Type Crane and Edge cutting.It increased its capacity in 2013 by introducing second Block Cutter and then installed a automatic polishing machine to increase its polishing production as well as quality of granites</p>
      <br />
       
    </div>&nbsp;
    <div class="col-sm-2">
      <span class="glyphicon glyphicon-globe logo"></span>
    </div>
  </div>
</div>



<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid  bg-grey text-center">
  <h2>PRODUCTS</h2><br>
  <%--<h4>What we have created</h4>--%>
  <div class="row text-center slideanim">
    <div class="col-sm-3">
      <div class="thumbnail" style="height: 500px">
          <asp:ImageButton ID="imgProduct2" runat="server" 
              ImageUrl="~/Image/steelGray.jpg" Height="95%" Width="100%" 
              onclick="imgProduct2_Click" />
        <br>
        <p style="font-family: 'Segoe Script'; font-size: large; font-weight: normal;  font-variant: normal; text-transform: none; color: #000000;">Steel Gray</p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="thumbnail" style="height: 500px">
          <asp:ImageButton ID="imgProduct4" runat="server" 
              ImageUrl="~/Image/rajBlack.jpg" Height="95%" Width="100%" 
              onclick="imgProduct4_Click" />
      
        <p style="font-family: 'Segoe Script'; font-size: large; font-weight: normal;  font-variant: normal; text-transform: none; color: #000000;">Rajasthan Black</p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="thumbnail" style="height: 500px">
          <asp:ImageButton ID="imgProduct3" runat="server" 
              ImageUrl="~/Image/balaFlower.jpg"  Height="95%" Width="100%" 
              onclick="imgProduct3_Click"/>
       
        <p style="font-family: 'Segoe Script'; font-size: large; font-weight: normal;  font-variant: normal; text-transform: none; color: #000000;">Bala Flower</p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="thumbnail" style="height: 500px">
          <asp:ImageButton ID="imgProduct1" runat="server" 
              ImageUrl="~/Image/jhansiRed.jpg"  Height="95%" Width="100%" 
              onclick="imgProduct1_Click"/>
       
        <p style="font-family: 'Segoe Script'; font-size: large; font-weight: normal;  font-variant: normal; text-transform: none; color: #000000;">Jhansi Red</p>
      </div>
    </div>
  </div><br>
  </div>
  
  
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel" >
    <!-- Indicators -->
    <h2>What our customers say</h2>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" bg-grey>
      <div class="item active">
        <h4>"They provide the best poilished granites!"</h4>
      </div>
      <div class="item">
        <h4>"One word for textures.... WOW!!"</h4>
      </div>
      <div class="item">
        <h4>"Could I be any more happy with this company?"</h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
 
    <div class="col-sm-4">   
      <p align=center><span class="glyphicon glyphicon-map-marker" ></span>Shahjahapur,India</p>
      </div>
      <div class="col-sm-4">
      <p align="center"><span class="glyphicon glyphicon-phone"></span>+91 9876789877</p>
      </div>
      <p align=center><span class="glyphicon glyphicon-envelope"></span> granitespvt@gmail.com</p>
    </div>

    
    
  </div>
</div>

  
</asp:Content>
