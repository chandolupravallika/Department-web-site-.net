<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MessageView.aspx.cs" Inherits="MessageView" %>

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
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="DMName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="ProfessorLogOut" runat="server" Text="Log Out" CssClass="btn btn-link"
                     OnClick="DMLogOut_Click1" />
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

        
      </ul>
      
      <hr>
      
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3><i class="glyphicon glyphicon-dashboard"></i>VIEW MESSAGES</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-7">
                  
			  <div class="well">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
        	<div class="col-md-5">
               
			
           <asp:GridView ID="GridView1" runat="server" PageSize="3" AutoGenerateColumns="false"
             AllowPaging="true" CssClass="table table-bordered table-hover" OnRowEditing="GridView1_RowEditing"
              OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"
              OnRowDeleting="GridView1_RowDeleting">

           <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" /> 
           <Columns>
           <asp:TemplateField HeaderText="To User">
            <ItemTemplate>
               <asp:Label ID="lblFuser" runat="server" Text='<%#Eval ("Fuser")%>'></asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="From User">
             <ItemTemplate>
              <asp:Label ID="lblTuser" runat="server" Text='<%#Eval("Tuser")%>'> </asp:Label>
             </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Subject">
             <ItemTemplate>
              <asp:TextBox ID="txtsubject" runat="server" Text='<%#Eval ("subject") %>'></asp:TextBox>
             </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Message">
             <ItemTemplate>
              <asp:TextBox ID="txtcontent" runat="server" Text='<%#Eval ("content")%>'> </asp:TextBox>
             </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Reply Message">
             <ItemTemplate>
               <asp:TextBox ID="txtRcontent" runat="server" Text='<%#Eval ("Rcontent")%>'> </asp:TextBox>
             </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Reply" ShowHeader="false">
             <EditItemTemplate>
              <asp:LinkButton ID="lnkbtnUpdate" runat="server" CausesValidation="true" Text="Send" CommandName="Update"></asp:LinkButton>
              <asp:LinkButton ID="lnkbtnCancel" runat="server" CausesValidation="false" Text="Cancel" CommandName="Cancel"></asp:LinkButton>
             </EditItemTemplate>
           <ItemTemplate>
             <asp:LinkButton ID="btnEdit" runat="server" CausesValidation="false" CommandName="Edit" Text="Reply"></asp:LinkButton>
           </ItemTemplate>
          </asp:TemplateField>
          <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" />
          <asp:CommandField HeaderText="Select" ShowSelectButton="true" ShowHeader="true" />
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

