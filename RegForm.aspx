<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="WebApplication7.RegForm" %>

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

<body style="background:rgb(35,196,255,.08);">
    <form id="form1" runat="server">
     <div class="col-md-4"></div>
   
   
    <div class="card">

   
   
    <!--Card content-->
    
    <div class="col-md-4 card-body px-lg-5 pt-0 transbox" style="width: 700px; box-shadow: 20px 20px 30px grey;" >
     <h3 class="card-header info-color white-text py-4" align="center">
        <strong>Sign Up</strong>
    </h3>

        <!-- Form -->
       
        
        
            <div class="form-row">
                <div class="col" errormessage="The feild can not be blank">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <!-- First name -->
                    <div class="md-form">
                       
                        <label for="materialRegisterFormFirstName">First name</label>
                        <asp:TextBox ID="tbFirstName" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Field can not be blank" ControlToValidate="tbFirstName" 
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Name can not have charaters other than Alphabets" 
                            ControlToValidate="tbFirstName" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z]*" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                       
                        <label for="materialRegisterFormLastName">Last name</label>
                        <asp:TextBox ID="tbLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="Field can not be blank" ControlToValidate="tbLastName" 
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="Name can not have charaters other than Alphabets" 
                            ControlToValidate="tbLastName" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z]*" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>

            <!-- E-mail -->
            <div class="md-form mt-0">
                
                <label for="materialRegisterFormEmail">E-mail</label>
                <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Email can not be blank" ControlToValidate="tbEmail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="Invalid Email Structure" 
                            ControlToValidate="tbEmail" ForeColor="Red" 
                            ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="Username already exist" ForeColor="Red" 
                    onservervalidate="CustomValidator1_ServerValidate" ControlToValidate="tbEmail"></asp:CustomValidator>
            </div>

            <!-- Password -->
            <div class="md-form">
                
                <label for="materialRegisterFormPassword">Password</label>
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
            <div class="md-form">
                
                <label for="materialRegisterFormPassword">Confirm Password</label>
                <asp:TextBox ID="tbConfirmPassword" runat="server" CssClass="form-control" 
                    TextMode="Password" 
                   ></asp:TextBox>
              
                
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match"  ForeColor="Red" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword"> </asp:CompareValidator>
              
            </div>

            <!-- Phone number -->
            <div class="md-form">
                
                <label for="materialRegisterFormPhone">Phone number</label>
                <asp:TextBox ID="tbPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Phone number can not be blank" ControlToValidate="tbPhoneNumber" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ErrorMessage="Phone Number can only have 10 digits" 
                            ControlToValidate="tbPhoneNumber" ForeColor="Red" 
                            ValidationExpression="[0-9]{10}" Display="Dynamic"></asp:RegularExpressionValidator>
                
            </div>
            <div class="md-form">
                
                <label for="materialRegisterFormPhone">Address</label>
                <asp:TextBox ID="tbAddress1" runat="server" CssClass="form-control" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Address can not be blank" ControlToValidate="tbAddress1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tbAddress2" runat="server" CssClass="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="Address can not be blank" ControlToValidate="tbAddress2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                
            </div>
             <div class="md-form">
                
                <label for="materialRegisterFormPhone">City</label>
                <asp:TextBox ID="tbCity" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="City can not be blank" ControlToValidate="tbCity" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ErrorMessage="Invalid City name" 
                            ControlToValidate="tbCity" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z]*" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
             <div class="md-form">
                
                <label for="materialRegisterFormPhone">Country</label>
                <asp:TextBox ID="tbCountry" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Country can not be blank" ControlToValidate="tbCountry" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ErrorMessage="Invalid Country name" 
                            ControlToValidate="tbCountry" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z]*" Display="Dynamic"></asp:RegularExpressionValidator>
               
            </div>
            

           
            <br />
            <div class="md-form">
            <!-- Sign up button -->
                <asp:Button ID="Button1" runat="server" Text="Sign Up" 
                    CssClass="btn btn-success" onclick="Button1_Click"  />
            </div>
            <br />
            <br />
          


            
        </div>
        </div>

        
        </form>
 

     <div class="col-md-4"></div>

</body>
</html>
