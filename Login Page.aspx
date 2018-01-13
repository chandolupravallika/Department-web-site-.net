<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login Page.aspx.cs" Inherits="Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Log-in page</title>
    <script src="Scripts/jquery-1.6.4.js"></script>
    <script src="Scripts/jquery-1.6.4.min.js"></script>
    <script src="Scripts/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <%--<script src="js/bootstrap.min.js"></script>--%>
    <link href="css/bootstrap.css" rel="stylesheet" />
    

    <script type="text/javascript">
        function openModal() {
            $('#AlertModal').modal('show');
        }
        function openModal2() {
            $('#AlertModal2').modal('show');
        }
        function openModala() {
            $('#AlertModala').modal('show');
        }
        function openModal2a() {
            $('#AlertModal2a').modal('show');
        }
</script>
</head>
   
<body>
 <form runat="server">


   <div class="container">
    <nav class="navbar navbar-default " role="navigation">
            <div class="navbar-header">
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" 
                    data-target="#menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Default.aspx">
                    <a href="#" class="pull-left">

                    <img src="images/siuc.PNG" alt="SIUC CSE" height="50"/>
                                                         </a>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="menu">
                
                    
                <div class="navbar navbar-right">
                    <a href="signup.aspx" class="btn btn-primary navbar-btn">signup</a>&nbsp;&nbsp;

                    <a href="Login Page.aspx" class="btn btn-primary navbar-btn">Log in</a>&nbsp;&nbsp;
               
                    </div>
            </div>
 </nav> 
        </div>
 <br />
 <br />     
                   
<div class="container">
          <div class="jumbotron">
        <h1>Welcome to Log in page</h1>
              <br />
              <br />
              <asp:Label ID="lblerror" runat="server" ForeColor="#FF3300"></asp:Label>
        </div>
  </div>
 <div class="col-md-5">
            <h3>For Members log-in</h3> 
    
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

                    <asp:Label ID="Label" runat="server" Text="Username"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtuname" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="Usernamevalidate" runat="server"
                         ErrorMessage="Enter User ID" ValidationGroup="UserLog" CssClass="alert-danger"
                         Display="Dynamic" ControlToValidate="txtuname"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="pass" runat="server" Text="Password"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtpwd" TextMode="Password" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                     &nbsp;
                    <asp:RequiredFieldValidator ID="passwordvalidate" runat="server"
                         ErrorMessage="Enter Password" ValidationGroup="UserLog"
                          ControlToValidate="txtpwd" CssClass="alert-danger"
                         Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                <asp:DropDownList ID="usertype" runat="server" CssClass="form-control">
            
            <asp:ListItem Value="Select">Select</asp:ListItem>
            
            <asp:ListItem Value="Student">Student</asp:ListItem>
            <asp:ListItem Value="Professor">Professor</asp:ListItem>
            
            </asp:DropDownList>
        
            <asp:RequiredFieldValidator ID="RequiredJobID" runat="server" ErrorMessage="Select a user type" ValidationGroup="UserLog"
                 InitialValue="Select" CssClass="alert-danger" ControlToValidate="usertype"></asp:RequiredFieldValidator>
        <br />
                <br />
                    <asp:Button ID="Login" runat="server" Text="Log in" CssClass="btn btn-primary" ValidationGroup="UserLog"  OnClick="login_Click" />
                    <button class="btn btn-info" type="reset">Reset</button>
            </div>


<br />
    </form>
</body>
</html>
