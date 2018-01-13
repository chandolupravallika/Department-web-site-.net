<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup page</title>
       

    

    <script src="Scripts/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    

    <script type="text/javascript">
        

        $('.carousel').carousel({
            interval: 1200
        });
        $(window).load(function () {
            $('#Homemodal').modal('show');
        });
        
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

        
        <div class="row">
           
                <h1 class="page-header">
                    Welcome to Department Site
                 </h1>
            </div>
        
            <div class="panel-heading">
                        <h2><span class="fa fa-fw fa-compass"></span>Registeration Form</h2>
                <div class="panel-body">
                       <nav >
                           <h3><span class="fa fa-fw fa-compass"></span>Login Information </h3><br/>
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtuname" runat="server" ></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="Username is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <br />
&nbsp;&nbsp;
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" ErrorMessage="Password is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                           <br />
                           <br />
                           Re-enter Password&nbsp;
                           <asp:TextBox ID="txtpwdcheck" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpwdcheck" ErrorMessage="Re-enter the password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtpwdcheck" ErrorMessage="The Password does not match" ForeColor="#FF3300"></asp:CompareValidator>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:DropDownList ID="DropDownList1" runat="server">
                               <asp:ListItem>Select</asp:ListItem>
                               <asp:ListItem>Student</asp:ListItem>
                               <asp:ListItem>Professor</asp:ListItem>
                           </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select the type of user" ForeColor="#FF3300" InitialValue="Select"></asp:RequiredFieldValidator>
                           <br /> 
                           <h3><span class="fa fa-fw fa-compass"></span>Personal Information</h3>
                           <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="Name is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                           <br />
                           <br />
                           <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:TextBox ID="txtaddress" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <br />
                           <br />
                           <asp:Label ID="Label5" runat="server" Text="Contact Number"></asp:Label>
&nbsp;&nbsp;&nbsp;
                           <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Valid number" ForeColor="#FF3300" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                           <br />
                           <br />
                           <asp:Label ID="Label6" runat="server" Text="Mail ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:TextBox ID="txtmail" runat="server" ></asp:TextBox>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmail" ErrorMessage="Mail ID is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                           &nbsp;&nbsp;
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="Enter a valid Email ID" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                           <br />
                           <br />
                           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Button ID="btnSignup" runat="server" OnClick="Button1_Click" Text="SignUp" />
                           <br />
                           <br />
                           <br/>

                           <br />

                        </nav>
                    </div>
                    </div>
        </div>
        
    </form>
</body>
</html>
