<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager_Worker.aspx.cs" Inherits="WebApplication7.Manager_Worker" %>

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
      
        
        
        <li><asp:HyperLink  class="navbar-brand" ID="hpLogin" runat="server" Visible="True" Font-Size="Small" NavigateUrl="~/Manager_Order.aspx">ORDERS</asp:HyperLink></li>
        <li><asp:HyperLink class="navbar-brand" ID="hpMyProfile" runat="server" Font-Size="Small" NavigateUrl="~/Manager_Worker.aspx">WORKERS</asp:HyperLink> </li>
<%--        <li><asp:HyperLink class="navbar-brand" ID="HyperLink1" runat="server" Font-Size="Small" NavigateUrl="~/Attendance.aspx">ATTENDANCE</asp:HyperLink> </li>
        --%><li><asp:HyperLink class="navbar-brand" ID="HyperLink2" runat="server" Font-Size="Small" NavigateUrl="~/Revenue.aspx">PRODUCTION</asp:HyperLink> </li>
        <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="navbar-brand" Font-Size="Small" CausesValidation="false">LOGOUT</asp:LinkButton> </li>      
      </ul>
    </div>
  </div>
</nav><br /><br /><br />
   
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
        <asp:Button ID="btAddRecord" runat="server" Text="Add Records" 
            CssClass="btn btn-success" onclick="btAddRecord_Click" CausesValidation="false"/>
           
            <br /><br />
            <div class="col-md-4"></div>
           
        <div runat="server" id="divAddRecords" class="col-md-4" visible="false">
        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">Name:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbName" runat="server" class="form-control" 
                   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Field can not be blank" ControlToValidate="tbName" 
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Name can not have charaters other than Alphabets" 
                            ControlToValidate="tbName" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z_ ]*" Display="Dynamic"></asp:RegularExpressionValidator><br />
            </div>
          </div>
         <div class="form-group">
            <label class="col-lg-3 control-label">Age:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbAge" runat="server" class="form-control" 
                   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Age can not be blank" ControlToValidate="tbAge" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="Age can only have Numbers" 
                            ControlToValidate="tbAge" ForeColor="Red" 
                            ValidationExpression="[0-9]{2}" Display="Dynamic"></asp:RegularExpressionValidator><br />   
                <br />
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Department:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbDept" runat="server" class="form-control" 
                   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Department can not be blank" ControlToValidate="tbDept" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                <br />
            </div>
          </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">Mobile No.:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbPhoneNumber" runat="server" class="form-control" 
                   ></asp:TextBox>
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
            <label class="col-lg-3 control-label">Address:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbAddress" runat="server" class="form-control" 
                    ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Address can not be blank" ControlToValidate="tbAddress" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">City:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbCity" runat="server" class="form-control" 
                    ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="City can not be blank" ControlToValidate="tbCity" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Joining Date:</label>
              <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender"></asp:Calendar>
            <%--<div class="col-lg-8">
                <asp:TextBox ID="tbJd" runat="server" class="form-control" 
                    ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="Date can not be blank" ControlToValidate="tbJd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ErrorMessage="Invalid Date" 
                            ControlToValidate="tbJd" ForeColor="Red" 
                            ValidationExpression="[0-9][0-9]/[0-9][0-9]/[0-9]{4}" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                <%--<br />
                </div>--%>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Salary:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbSalary" runat="server" class="form-control" 
                   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Salary can not be blank" ControlToValidate="tbSalary" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ErrorMessage="Invalid Salary" 
                            ControlToValidate="tbSalary" ForeColor="Red" 
                            ValidationExpression="[0-9]*" Display="Dynamic"></asp:RegularExpressionValidator>
                <br />
                </div>
          </div>
        <%--  <div class="form-group">
            
            <div class="col-md-8">
                
            </div>
          </div>--%>
          <div class="form-group">
            <label class="control-label"></label>
           
              
                <asp:Button ID="btSaveChanges" runat="server" Text="Save Changes" 
                    class="btn btn-primary" onclick="btSaveChanges_Click" CausesValidation="true"/>
              
            </div>
            </form>
          </div>
        
        </div>
       </form>

   
</body>
</html>
