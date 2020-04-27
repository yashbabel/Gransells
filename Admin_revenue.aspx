<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_revenue.aspx.cs" Inherits="WebApplication7.Admin_revenue" %>

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
      
        
        
        <li><asp:HyperLink  class="navbar-brand" ID="hpLogin" runat="server" Visible="True" Font-Size="Small" NavigateUrl="~/Admin_Order.aspx">ORDERS</asp:HyperLink></li>
        <li><asp:HyperLink class="navbar-brand" ID="hpMyProfile" runat="server" Font-Size="Small" NavigateUrl="~/Admin_worker.aspx">WORKERS</asp:HyperLink> </li>
<%--        <li><asp:HyperLink class="navbar-brand" ID="HyperLink1" runat="server" Font-Size="Small" NavigateUrl="~/Attendance.aspx">ATTENDANCE</asp:HyperLink> </li>
        --%><li><asp:HyperLink class="navbar-brand" ID="HyperLink2" runat="server" Font-Size="Small" NavigateUrl="~/Admin_revenue.aspx">PRODUCTION</asp:HyperLink> </li>
        <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="navbar-brand" Font-Size="Small" CausesValidation="false">LOGOUT</asp:LinkButton> </li>   
      </ul>
    </div>
  </div>
</nav>
    
    
    <br /><br /><br /><br /><br />
    <div class="col-md-4"></div>
    <div class="col-md-4">
    <div align="center">
        <asp:Button ID="btShowRecords" runat="server" Text="Show Production" 
          class="btn btn-primary"  onclick="btShowRecords_Click" CausesValidation="false"/>
        <asp:Button ID="btAddRecords" runat="server" Text="Add Production" 
           class="btn btn-primary" onclick="btAddRecords_Click" CausesValidation="false"/>
        <br />
        <br />
        <asp:Label ID="lbemop" runat="server" Text=" Enter Month of Production:" Visible="false"></asp:Label>
       <asp:DropDownList ID="ddlMonth" 
            runat="server" Visible="false" 
             AutoPostBack="True" 
            onselectedindexchanged="ddlMonth_SelectedIndexChanged1">
             <asp:ListItem Value="select">--select--</asp:ListItem>
            <asp:ListItem Value="January">January</asp:ListItem>
            <asp:ListItem Value="February">February</asp:ListItem>
            <asp:ListItem Value="March">March</asp:ListItem>
            <asp:ListItem Value="April">April</asp:ListItem>
            <asp:ListItem Value="May">May</asp:ListItem>
            <asp:ListItem Value="June">June</asp:ListItem>
            <asp:ListItem Value="July">July</asp:ListItem>
            <asp:ListItem Value="August">August</asp:ListItem>
            <asp:ListItem Value="September">September</asp:ListItem>
            <asp:ListItem Value="October">October</asp:ListItem>
            <asp:ListItem Value="November">November</asp:ListItem>
            <asp:ListItem Value="December">December</asp:ListItem>

        </asp:DropDownList>
       
           <br />
        <asp:Label ID="lbcheck" runat="server" ForeColor="Red" 
            Text="Month already exist" Visible="False"></asp:Label>
       
           </div>
           <div runat="server" visible="false" id="divshow">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" alternatingrowstyle-cssclass="space" rowstyle-cssclass="space" >
        <Columns>
          
          
          <asp:BoundField HeaderText="Month"  DataField="month" ItemStyle-Width="190px" ItemStyle-ForeColor="Black" ItemStyle-VerticalAlign="NotSet" ItemStyle-HorizontalAlign="Justify" />
          <asp:BoundField HeaderText="Slab Length"  DataField="slab_length" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="Slab Width" DataField="slab_width" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="Number of Piece" DataField="num_of_peice" ItemStyle-Width="190px"/>
          <asp:BoundField HeaderText="Production" DataField="sq_ft" ItemStyle-Width="190px"/>
          
          
           
        </Columns>
        </asp:GridView><br /><br />
           </div>
    <div id="divcal" runat="server" visible="false">
    <form class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">Slab Length</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbSlabLength" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Length can not be blank" ControlToValidate="tbSlabLength" 
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Only Numbers" 
                            ControlToValidate="tbSlabLength" ForeColor="Red" 
                            ValidationExpression="[0-9]*" Display="Dynamic"></asp:RegularExpressionValidator><br />
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-lg-3 control-label">Slab Width</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbSlabWidth" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Width can not be blank" ControlToValidate="tbSlabWidth" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="Only Numbers" 
                            ControlToValidate="tbSlabWidth" ForeColor="Red" 
                            ValidationExpression="[0-9]*" Display="Dynamic"></asp:RegularExpressionValidator>
                <br />
            </div>
          </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">Number of Piece</label>
            <div class="col-lg-8">
                <asp:TextBox ID="tbNOP" runat="server" class="form-control" 
                    ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Field number can not be blank" ControlToValidate="tbNOP" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ErrorMessage="Can only have digits" 
                            ControlToValidate="tbNOP" ForeColor="Red" 
                            ValidationExpression="[0-9]*" Display="Dynamic"></asp:RegularExpressionValidator>
                <br />
            </div>
          </div>
          
          <div >
            <label class="col-lg-3" visible="false" id="lbprod" runat="server" style="font-weight: bold">Production</label>
            <div class="col-lg-8">
                <asp:Label ID="lbSquareFeet" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                </div>
          </div>
         <br /><br />
          <div class="form-group">
            <label class="control-label"></label>
            <div class="col-md-8">
              
                <asp:Button ID="btCalculate" runat="server" Text="Calculate" class="btn btn-primary" onclick="btCalculate_Click" />
                 &nbsp;<asp:Button ID="btSave" runat="server" Text="Save" class="btn btn-primary" onclick="btSave_Click"  Visible=false/>
              
            </div>
          </div>
        </form>
        </div>

    </div>
    </form>
</body>
</html>
