<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="WebApplication7.UserProfile" %>

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
      <h7 class="navbar-brand">Granite Pvt. Ltd.</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      <li><asp:HyperLink ID="hpHome" runat="server" class="navbar-brand" Visible="True" Font-Size="Small" NavigateUrl="~/Default.aspx">HOME</asp:HyperLink></li>
        
        
        <li><asp:HyperLink  class="navbar-brand" ID="hpLogin" runat="server" Visible="True" Font-Size="Small" NavigateUrl="~/Login.aspx">LOGIN</asp:HyperLink></li>
        <li><asp:HyperLink class="navbar-brand" ID="hpMyProfile" runat="server" Visible="False" Font-Size="Small" NavigateUrl="~/UserProfile.aspx">MY PROFILE</asp:HyperLink> </li>
         <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="navbar-brand" Visible="False" Font-Size="Small" CausesValidation="false">LOGOUT</asp:LinkButton> </li>      
      </ul>
    </div>
  </div>
</nav><br /><br /><br />
<div class="container col-md-4">
    
	
      
      <!-- edit form column -->
      <div class="personal-info">
        
        <h3 align="center">Personal info</h3>
        
        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbFirstName" runat="server" class="form-control" 
                    ontextchanged="tbFirstName_TextChanged" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Field can not be blank" ControlToValidate="tbFirstName" 
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Name can not have charaters other than Alphabets" 
                            ControlToValidate="tbFirstName" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z_ ]*" Display="Dynamic"></asp:RegularExpressionValidator><br />
            </div>
          </div>
         
        
           <div class="form-group">
            <label class="col-lg-3 control-label">Mobile No.:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbPhoneNumber" runat="server" class="form-control" 
                    ontextchanged="tbPhoneNumber_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Phone number can not be blank" ControlToValidate="tbPhoneNumber" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ErrorMessage="Phone Number can only have 10 digits" 
                            ControlToValidate="tbPhoneNumber" ForeColor="Red" 
                            ValidationExpression="[0-9]{10}" Display="Dynamic"></asp:RegularExpressionValidator>
                <br />
            </div>
          </div>
          <div class="form-group">
                
              <label class="col-lg-3 control-label">Password:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <small id="materialRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
                    At least 1 Lowercase & 1 Uppercase letter,1 Special Character,8 characters and 1 digit 
                </small><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Password can not be blank" ControlToValidate="tbPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ErrorMessage="Password not as per specification" 
                            ControlToValidate="tbPassword" ForeColor="Red" 
                            ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" Display="Dynamic"></asp:RegularExpressionValidator>

            </div>
            </div>
            <div class="form-group">
                
               <label class="col-lg-3 control-label">Confirm Password:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbConfirmPassword" runat="server" CssClass="form-control" 
                    TextMode="Password" ontextchanged="tbConfirmPassword_TextChanged"  
                   ></asp:TextBox>
              
                
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match"  ForeColor="Red" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword"> </asp:CompareValidator>
              
            </div>
            </div>
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Address:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbAddress1" runat="server" class="form-control" 
                    ontextchanged="tbAddress1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Address can not be blank" ControlToValidate="tbAddress1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">City:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbCity" runat="server" class="form-control" 
                    ontextchanged="tbCity_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="City can not be blank" ControlToValidate="tbCity" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ErrorMessage="Invalid City name" 
                            ControlToValidate="tbCity" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z]*" Display="Dynamic"></asp:RegularExpressionValidator>
                <br />
                </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Country:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbCountry" runat="server" class="form-control" 
                    ontextchanged="tbCountry_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Country can not be blank" ControlToValidate="tbCountry" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ErrorMessage="Invalid Country name" 
                            ControlToValidate="tbCountry" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z]*" Display="Dynamic"></asp:RegularExpressionValidator>
                <br />
                </div>
          </div>
        <%--  <div class="form-group">
            
            <div class="col-md-8">
                
            </div>
          </div>--%>
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              
                <asp:Button ID="btSaveChanges" runat="server" Text="Save Changes" 
                    class="btn btn-primary" onclick="btSaveChanges_Click"/>
              
            </div>
          </div>
        </form>
      </div>
 
  </div>
    
    <div>
    <h3 align="center">My Orders</h3>
    <div align="center">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" alternatingrowstyle-cssclass="space" rowstyle-cssclass="space" >
        <Columns>
          <asp:ImageField HeaderText="" DataImageUrlField="image" ControlStyle-Width="100"  ControlStyle-Height="100" />
          <asp:BoundField HeaderText="url" DataField="image"  visible="false" />
          <asp:BoundField HeaderText="TYPE"  DataField="type" ItemStyle-Width="190px" ItemStyle-ForeColor="Black" ItemStyle-VerticalAlign="NotSet" ItemStyle-HorizontalAlign="Justify" />
          <asp:BoundField HeaderText="SIZE"  DataField="size" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="PRICE" DataField="price" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="DATE" DataField="orderDate" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="SHIPPING ADDRESS" DataField="ship_address" ItemStyle-Width="190px"/>

           
        </Columns>
        </asp:GridView>
     <h5 style="color: #FF0000">* For order or cancellation related queries,kindly contact firm *</h5>
      </div>
    </div>
</form>
</body>
</html>
