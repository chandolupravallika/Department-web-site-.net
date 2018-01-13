<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewCourseForm.aspx.cs" Inherits="NewCourseForm" %>

<!DOCTYPE html>

<html lang="en">
	<head>
		
		<title>New Course</title>
		
		
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
      <a class="navbar-brand" href="#">New Course Form</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="ProfForm" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="ProfessorLogOut" runat="server" OnClick="ProfLogOut_Click1" Text="Log Out" CssClass="btn btn-link"/>
                      
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
           <asp:DropDownList ID = "ddlcourses"  runat="server">

</asp:DropDownList>&nbsp;
           <asp:Button ID="coursebtn" runat="server" OnClick="coursebtn_Click" ForeColor="#0099CC" Text="&gt;"/>
           
          
        </li>
        
        <li><a href="NewCourseForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New Course</a></li>
        
      </ul>
      
      <hr>
      
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3><i class="glyphicon glyphicon-dashboard"></i>NEW COURSE FORM</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-7">
                  
			  <div class="well">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-5">
                <asp:Label ID="CourseID" runat="server" Text="Course ID"></asp:Label>
                <asp:TextBox ID="txtCID" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
               
                <asp:Label ID="CName" runat="server" Text="Course Name"></asp:Label>
                <asp:TextBox ID="txtcname" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                
                <asp:Label ID="pnmae" runat="server" Text="Professor Name"></asp:Label>
                <asp:TextBox ID="txtpname" runat="server" CssClass="form-control" ></asp:TextBox>
                <br />
                
                <br />
                     <asp:Button ID="NewCourse" runat="server" Text="Submit form" CssClass="btn btn-primary" OnClick="NewSubmit_Click" />
                     <button class="btn btn-default" type="reset">Reset</button>

                 </div>
                 <asp:Label ID="message" runat="server" ForeColor="#FF3300"></asp:Label>
     
       </div>
     </div>
  	</div>
  </div>
 </div>
</form>
</body>
</html>

