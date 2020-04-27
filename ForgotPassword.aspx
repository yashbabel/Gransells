<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WebApplication7.ForgotPassword" %>

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
<body>
    <form id="form1" runat="server">
    <div class="col-md-4"></div>
    <div class="container-fluid">
     
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ForeColor="Red" ErrorMessage="This field is required" ControlToValidate="tbUserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
               
            </div>
            <br />
            <br />
           
            <div class="md-form" align="center">
        
                <asp:Button ID="btLogin" runat="server" Text="Send Email" 
                    CssClass="form-control btn btn-success" onclick="btLogin_Click"/>
            </div>
            <br />
        
                      
            </form>
            
            </div>
    </div>
    </form>
</body>
</html>
