<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Professor.aspx.cs" Inherits="Professor" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		
		<title>Professor Control Panel</title>
		
		
        <script src="Scripts/jquery-1.11.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/styles.css" rel="stylesheet">

	</head>

	<body>
<form runat="server">

<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="#">Professor Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="ProfessorName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="ProfessorLogOut" runat="server" Text="Log Out" CssClass="btn btn-link"
                     OnClick="ProfessorLogOut_Click1" />
            </li>
           
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>
    <div class="container">
  
  
  <div class="row">
	<div class="col-sm-3">
      
      <h3><i class="glyphicon glyphicon-briefcase"></i>MENU</h3>
      <hr>
      
      <ul class="nav nav-stacked ">
       <li><a href="Professor.aspx"><i class="glyphicon glyphicon-link"></i> Main Page</a></li>
       <li><i class="glyphicon glyphicon-flash"></i>
           <asp:DropDownList ID = "ddlcourses"  runat="server"></asp:DropDownList>&nbsp;
           <asp:Button ID="coursebtn" runat="server" OnClick="coursebtn_Click" ForeColor="#0099CC" Text="&gt;"/>
       </li>
      
        <li><a href="NewCourseForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New Course</a></li>
        <li><a href="Message.aspx"><i class="glyphicon glyphicon-link"></i> Send message</a></li>
          <li><a href="MessageView.aspx"><i class="glyphicon glyphicon-link"></i> View messages</a></li>
          <li><i class="glyphicon glyphicon-link"></i>
           <asp:DropDownList ID = "ddlReport"  runat="server"></asp:DropDownList>&nbsp;
           <asp:Button ID="Button1" runat="server" OnClick="reportbtn_Click" ForeColor="#0099CC" Text="&gt;" Height="18px" Width="18px"/>
          </li>
          <li><i class="glyphicon glyphicon-link"></i>
           <asp:DropDownList ID = "ddlReportview"  runat="server"></asp:DropDownList>&nbsp;
           <asp:Button ID="Button2" runat="server" OnClick="reportviewbtn_Click" ForeColor="#0099CC" Text="&gt;" Height="18px" Width="18px"/>
          </li>
          

      </ul>
      
      <hr>
      
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3><i class="glyphicon glyphicon-dashboard"></i>Main Page</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-7">
                  
			  <div class="well">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div >
              <p class="text-success"> You Have being succesfully Logged In </p>

                <p class="text-primary"> Now manage your work from left MENU column </p>
                
              
			</div>
     
       </div>
     </div>
  	</div>
    
  </div>
 </div>
</form>
</body>
</html>

