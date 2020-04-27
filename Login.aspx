<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication7.WebForm2" %>

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
<h3 align="center">
        <em><strong>Gransells</strong></em>
        <h5 align="center"><em>fulfilling your texture desires</em></h5>
    </h3>
 <div class="col-md-4"></div>

   

    

   

   
   
    <!--Card content-->
 
    <div class="col-md-4 card-body px-lg-5 pt-0 transbox row" style="box-shadow: 20px 20px 30px grey; vertical-align:middle;" >
        <asp:Label ID="lbCheck" runat="server" ForeColor="Red" Visible="False" Font-Size="Large" Font-Bold="True"></asp:Label>
     

        <!-- Form -->
       
        <form class="text-center" style="color: #757575;" action="#!">
        
            <div class="form-row">
                <div class="col">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <!-- First name -->
                    <div class="md-form">
                       
                        <label for="materialRegisterFormFirstName">Email</label>
                        <asp:TextBox ID="tbUserName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    
                    <div class="md-form">
                       
                        <asp:Label ID="lbPass" runat="server"  Visible="False" 
                            ><b>Password</b></asp:Label>
                        <asp:TextBox ID="tbPassword" runat="server" CssClass="form-control" Visible="false" TextMode="Password"></asp:TextBox>
                        <small style="color: #3333FF">
                            <asp:HyperLink ID="hlForPass" runat="server" Visible="false" NavigateUrl="~/ForgotPassword.aspx">Forgot Password ?</asp:HyperLink></small>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="md-form" align="center">
        <asp:Button ID="btContinue" runat="server" Text="Continue" 
                    CssClass="form-control btn btn-success" onclick="btContinue_Click" />
        </div>
            <div class="md-form" align="center">
            <!-- Sign up button -->
                <asp:Button ID="btLogin" runat="server" Text="Login" 
                    CssClass="form-control btn btn-success" onclick="btLogin_Click" Visible="False"  />
            </div>
            <br />
        
                      
            </form>
            
            </div>
           
 
            
     
             <div class="col-md-4"></div>
            
            
</div>
<div align="center">
<form action="RegForm.aspx">
----------------- New to Gransells? -----------------
    <br />
<asp:Button ID="btNewAcc" runat="server" Text="Create a New Account"  />
<br /><br />
    </form>
</div>   
</form>
<div class="row" style="height:auto;border-top: 0.5px solid; border-top-color: #C0C0C0;">
<h4 align="center" style="color: #99CCFF">
    <asp:HyperLink ID="HyperLink1" runat="server"  Font-Italic="True" NavigateUrl="~/Default.aspx#contact" >Contact Us </asp:HyperLink> 
    ||  <asp:HyperLink ID="HyperLink2" runat="server"  Font-Italic="True" NavigateUrl="~/Default.aspx" > Home </asp:HyperLink> 
    
</h4>
</div>        
</body>
</html>
