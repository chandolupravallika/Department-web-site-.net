﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewSCourseForm.aspx.cs" Inherits="NewSCourseForm" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		
		<title>Student Control Panel</title>
		
		
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
      <a class="navbar-brand" href="#">Student Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="StudentName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="StuLogOut_Click1" CssClass="btn btn-link" /> 

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

       <li><i class="glyphicon glyphicon-flash"></i>
           <asp:DropDownList ID = "ddlcourses"  runat="server"></asp:DropDownList>&nbsp;
           <asp:Button ID="coursebtn" runat="server" OnClick="coursebtn_Click" ForeColor="#0099CC" Text="&gt;"/>
       </li>
       <li><a href="NewSCourseForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New Course</a></li>
       <li><a href="SMessage.aspx"><i class="glyphicon glyphicon-link"></i> Send message</a></li>
       <li><a href="SMessageView.aspx"><i class="glyphicon glyphicon-link"></i> View messages</a></li>
       <li><i class="glyphicon glyphicon-link"></i>
           <asp:DropDownList ID = "ddlReportview"  runat="server"></asp:DropDownList>&nbsp;
           <asp:Button ID="Button2" runat="server" OnClick="reportviewbtn_Click" ForeColor="#0099CC" Text="&gt;" Height="18px" Width="18px"/>
       </li>
      </ul>
      
      <hr>
      
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3><i class="glyphicon glyphicon-dashboard"></i>Student RECORDS</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-7">
			  <div class="well">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>

        	<div class="col-md-5">
            
                <asp:GridView ID="GridView1" runat="server" PageSize="3" AutoGenerateColumns="false"
             AllowPaging="true" CssClass="table table-bordered table-hover" 
              OnRowDeleting="GridView1_RowDeleting" >

           <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" /> 
           <Columns>
           <asp:TemplateField HeaderText="courseID">
            <ItemTemplate>
               <asp:Label ID="lblcourseID" runat="server" Text='<%#Eval ("courseID")%>'></asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="cname">
             <ItemTemplate>
              <asp:Label ID="lblcname" runat="server" Text='<%#Eval("cname")%>'> </asp:Label>
             </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Professor">
             <ItemTemplate>
              <asp:label ID="lblprof" runat="server" Text='<%#Eval ("professor") %>'></asp:label>
             </ItemTemplate>
           </asp:TemplateField>
          
               <asp:TemplateField>
                   <ItemTemplate>
                    <asp:Button ID="btInsert" Text="Insert Record" 
                                    CssClass="button" OnClick="InsertRecord" 
                                    CommandName="AddDataTemplate" runat="server" />
                       </ItemTemplate>
               </asp:TemplateField>

          <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" />
          
        </Columns>

       </asp:GridView>
                
			</div>
                
     
       </div>
            <asp:Label ID="message" runat="server"></asp:Label>
     </div>
  	</div>
    
  </div>
    </div>

</form>
</body>
</html>


