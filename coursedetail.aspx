<%@ Page Language="C#" AutoEventWireup="true" CodeFile="coursedetail.aspx.cs" Inherits="coursedetail" %>

<!DOCTYPE html>

<html lang="en">
	<head>
		
		<title>Professor course detail Control Panel</title>
		
		
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
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="PName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="ProfessorLogOut_Click1" CssClass="btn btn-link" /> 

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
      	
      	
       <h3><i class="glyphicon glyphicon-dashboard"></i> Course Details</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-7">
			  <div class="well">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
                  
        	<div class="col-md-5">
              
                <asp:SqlDataSource ID="courseData" runat="server" ConnectionString="<%$ ConnectionStrings:DeptConnections %>"  SelectCommand="SELECT [username], [courseID], [cname], [professor] FROM [usercourse] ORDER BY [username]" >
                    
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
                    CssClass="table table-bordered table-hover" 
                    AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                       
                        <asp:TemplateField HeaderText="username">
            <ItemTemplate>
               <asp:Label ID="lblUName" runat="server" Text='<%#Eval ("username")%>'></asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Course ID">
             <ItemTemplate>
              <asp:Label ID="lblCID" runat="server" Text='<%#Eval("courseID")%>'> </asp:Label>
             </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="cname">
             <ItemTemplate>
              <asp:label ID="lblcname" runat="server" Text='<%#Eval ("cname") %>'></asp:label>
             </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Professor">
             <ItemTemplate>
              <asp:label ID="lblprofessor" runat="server" Text='<%#Eval ("professor")%>'> </asp:label>
             </ItemTemplate>
           </asp:TemplateField>
           <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" />
            </Columns>
           </asp:GridView>
                
			</div>
     
       </div>
     </div>
  	</div>
    
  </div>
    </div>

</form>
</body>
</html>
