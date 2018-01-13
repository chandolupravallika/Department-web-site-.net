<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staffdetails.aspx.cs" Inherits="staffdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>course details</title>
    

    

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
    <style>
#grad{
display:none;
}
</style>
   
    
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
     <div class="row">
      <h1 class="page-header">
                    Welcome to CSE Department
                 </h1>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><span class="fa fa-fw fa-compass"></span>Computer Course Details</h4>
                    </div>
                    <div class="panel-body">
                        <nav >
                            <a href="#undergrad" onclick="myFunction()">UnderGraduate</a> <br />
                            <a href="#grad" onclick="mygradFunction()">Graduate</a> 
                        </nav>
                    </div>
                </div>
            </div>
         <a name="undergrad" ></a>
         <div id="undergrad">
                     <div class="col-md-4" >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><span class="fa fa-fw fa-compass"></span>Undergraduate Program Course list</h4>
                    </div>
                    <div class="panel-body">
                          <section class="block block-content" id="main-content">        
            
                          <h3>100-200 level</h3>
<p>CS 105 &#160; &#160;Introduction to Application Software</p>
<p>CS 200B &#160;Computer Concepts</p>
<p>CS 201 &#160; &#160;Problem Solving with Computer</p>
<p>CS 202 &#160; &#160;Introduction to Computer Science></p>
<p>CS 215 &#160; &#160;Discrete Mathematics</p>
<p>CS 220 &#160; &#160;Programming with Data Structures</p>
<p>CS 221 &#160; &#160;Introduction to Internet and Mobile Computing</p>
<p>CS 280 &#160; &#160;Computational Statistics I</p>
<p>CS 290 &#160; &#160;Communication Skills and Ethics for Computer Science</p>
<h3>300 Level</h3>
<p>CS 300 &#160; &#160;Introduction to Linux</p>
<p>CS 301 &#160; &#160;Introduction to Visual Basic</p>
<p>CS 304 &#160; &#160;Advanced Object-Oriented Programming</p>
<p>CS 305 &#160; &#160;Software Development Practices</p>
<p>CS 306 &#160; &#160;Linux/UNIX Programming</p>
<p>CS 311 &#160; &#160;The Theory and Implementation of Programming Languages</p>
<p>CS 315 &#160; &#160;Computer Logic and Digital Design</p>
<p>CS 320 &#160;&#160;&#160;Computer Organization and Architecture</p>
<p>CS 330 &#160; &#160;Introduction to the Design and Analysis of Algorithms</p>
<p>CS 335 &#160; &#160;Operating Systems</p>
<p>CS 350 &#160; &#160;Web Application Development</p>
<p>CS 391 &#160; &#160;Current Topics in Computer Science</p>
<p>CS 393 &#160; &#160;Internship in Computer Science</p>
<p>CS 399 &#160; &#160;Social, Ethical and Professional Issues in Computer Science</p>
<h3>400 Level</h3>
<p>CS 401 &#160; &#160;Computer Architecture></p>
<p>CS 402 &#160; &#160;Theory and Applications of Computer Aided Design</p>
<p>CS 404 &#160; &#160;Autonomous Mobile Robots</p>
<p>CS 406 &#160; &#160;Basic Linux System Administration</p>
<p>CS 407 &#160; &#160;Advanced Linux/UNIX Programming (New Fall 2016)</p>
<p>CS 408 &#160; &#160;Applied Cryptography</p>
<p>CS 410 &#160; &#160;Computer Security</p>
<p>CS 412 &#160; &#160;Programming Distributed Applications</p>
<p>CS 416 &#160; &#160;Compiler Construction</p>
<p>CS 420 &#160; &#160;Distributed Systems</p>
<p>CS 425 &#160; &#160;Principles of Virtualization and Cloud Computing</p>
 
    </section>
                        
                    </div>
                </div>
            </div>
         </div>
         <a name="grad"></a>
         <div id="grad">
              <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><span class="fa fa-fw fa-compass"></span>Graduate Program course List</h4>
                    </div>
                    <div class="panel-body">
                         <section class="block block-content" >        
            <h2 class="content-header">                   Course Listings
    
</h2>
                          <h3>400 Level</h3>
<p>CS 401 &#160; &#160;=Computer Architecture</p>
<p>CS 402 &#160; &#160;Theory and Applications of Computer Aided Design</p>
<p>CS 404 &#160; &#160;Autonomous Mobile Robots</p>
<p>CS 406 &#160; &#160;Basic Linux System Administration</p>
<p>CS 407 &#160; &#160;Advanced Linux/UNIX Programming (New Fall 2016)</p>
<p>CS 408 &#160; &#160;Applied Cryptography</p>
<p>CS 410 &#160; &#160;Computer Security</p>
<p>CS 412 &#160; &#160;Programming Distributed Applications</p>
<p>CS 416 &#160; &#160;Compiler Construction</p>
<h3><strong>500-600 Level</strong></h3>
<p>CS 501 &#160; &#160;&#160;Advanced Computer Architecture</p>
<p>CS 503 &#160; &#160;&#160;Fault-Tolerant Computing Systems</p>
<p>CS 510 &#160; &#160;&#160;Wireless and Network Security</p>
<p>CS 511 &#160; &#160;&#160;Formal Specification of Programming Languages</p>
<p>CS 512 &#160; &#160;&#160;Declarative Programming</p>
<p>CS 514 &#160; &#160;&#160;Advanced Operating Systems</p>
<p>CS 593 &#160; &#160;&#160;Seminar</p>
<p>CS 598 &#160; &#160;&#160;Graduate Project</p>
<p>CS 599 &#160; &#160;&#160;Thesis</p>
<p>CS 600 &#160; &#160;&#160;Doctoral Dissertation</p>
                
                

    </section>
                        
                    </div>
                </div>
            </div>
         </div>
</div>

 </form>   
    <script>
        function myFunction()
        {
            var x = document.getElementById('undergrad');
            var y = document.getElementById('grad');
            if (x.style.display === 'block')
            {
                y.style.display = 'none';
                
            } else {
                x.style.display = 'block';
                y.style.display = "none";
            }
        }
        function mygradFunction() {
            var x = document.getElementById('undergrad');
            var y = document.getElementById('grad');
            if (y.style.display === 'none') {
                y.style.display = 'block';
                x.style.display = 'none';

            } else {
                x.style.display = 'block';

            }
        }
</script>
</body>
</html>
   



