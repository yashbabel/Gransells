<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="WebApplication7.WebForm3" %>

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
  div.transbox {
  margin: 30px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.8;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}
  </style>
</head>
<body >
 <form id="form1" runat="server">
<div class="row" style="height:auto;">

 <div class="col-md-4"></div>
 
    <!--Card content-->
 
    <div class="col-md-4 card-body px-lg-5 pt-0 transbox row" style="box-shadow: 20px 20px 30px grey; vertical-align:middle;" >
    <h3 align="center">
        <em><strong>Order Placed</strong></em>
        <h5 align="center"><em>Thankyou for shopping with us</em></h5><br />

        
    </h3>
    <div>
    <asp:Button class=" form-control btn" ID="btContinueShop" runat="server" 
            Text="Continue Shopping" BackColor="#FF9900" 
            BorderWidth="2px" ForeColor="Black" onclick="btContinueShop_Click" /><br />
    </div><br /><br />
    </div>
    </div>
    </form>
</body>
</html>
