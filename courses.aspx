<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="courses" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Department WebSite</title>
    

    

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
#staff{
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
                        <h4><span class="fa fa-fw fa-compass"></span>Computer Science Professor & Staff Details</h4>
                    </div>
                    <div class="panel-body">
                       <nav >
                            <a href="#faculty" onclick="myfunctionfaculty()">Continuing Faculty</a> <br />
                            <a href="#staff" onclick="myfunctionstaff()">Staff</a> <br /> 
                        </nav>
                    </div>
                </div>
            </div>
         <a name="faculty"></a>
         <div id="faculty">
         <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><span class="fa fa-fw fa-compass"></span>Continuing Faculty</h4>
                    </div>
                    <div class="panel-body">
                         <section class="block block-content" id="main-content">        
     

<div class="people-wrapper">
    
    <h3>Amiangshu S. Bosu</h3>

    <h4 class="department">Assistant Professor</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Engineering A0409F</p>
<p>Phone: (618) 453-6032</p>
<p>Email: <a href="mailto:abosu@cs.siu.edu" title="mailto">abosu@cs.siu.edu</a></p></p></div>
        </div>

            <div class="summary">
        <p><p>Education:&#160;Ph.D. Computer Science, The University of Alabama</p>
<p>Current Research Interests:</p>
<p>Software engineering, empirical software engineering, code review, software security, android security, malware detection, and &#160;mining software repositories.</p>
<p>Homepage:&#160;<a href="http://www.cs.siu.edu/&#126;abosu" target="_blank" title="amiangshu homepage">http://www.cs.siu.edu/&#126;abosu</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Norman F.Carver III</h3>

    <h4 class="department">Associate Professor, Graduate Program Director</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Engineering A0307C</p>
<p>Phone: (618) 453-6048</p>
<p>Email: <a href="mailto:carver@cs.siu.edu" title="mailto">carver@cs.siu.edu</a></p></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Computer Science, University of Massachusetts</p>
<p>Current Research Interests:</p>
<p>Multi-agent systems, distributed problem solving, sensor interpretation, knowledge-intensive control of AI systems.</p>
<p>Homepage:&#160;<a href="http://www.cs.siu.edu/&#126;carver/" title="facultypage">http://www.cs.siu.edu/&#126;carver/</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Dunren Che</h3>

    <h4 class="department">Professor, Undergraduate Program Director</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Engineering A0307B</p>
<p>Phone: (618) 453-6046</p>
Email: <a href="mailto:dche@cs.siu.edu" title="mailto">dche@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D., Computer Science, Beijing University Of Aeronautics and Physics</p>
<p>Current Research Interests:</p>
<p>Cloud Computing, Big Data Management and Analytics, and all general topics in Database (particularly XML database) and Data Mining.</p>
<p>Homepage:&#160;<a href="http://www.cs.siu.edu/&#126;dche" title="facultypage">http://www.cs.siu.edu/&#126;dche</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Qiang Cheng</h3>

    <h4 class="department">Associate Professor</h4>
                
<div class="leftcol">
            
        <div class="person-contact">
    <p><p>Office: Engineering A0405D</p>
<p>Phone: (618) 453-6056</p>
Email: <a href="mailto:qcheng@cs.siu.edu" title="mailto">qcheng@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Electrical and Computer Engineering, University of Illinois Urbana-Champaign</p>
<p>Current Research Interests:</p>
<p>Signal and image processing, statistical learning theory, biomedical and healthcare informatics, and their applications.</p>
<p>Homepage:&#160;<a href="http://www.cs.siu.edu/&#126;qcheng" title="facultypage">http://www.cs.siu.edu/&#126;qcheng</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Eric Chitambar</h3>

    <h4 class="department">Associate Professor</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Neckers 480</p>
<p>Phone: (618) 453-2020</p>
Email:&#160;<a href="mailto:echitamb@siu.edu" title="mailto echitamb@siu.edu">echitamb@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Physics, University of Michigan</p>
<p>Current Research Interests:</p>
<p>Quantum information theory, which is a field that studies how quantum mechanical properties can be used to enhance information processing. For instance, quantum entanglement has been shown to produce some truly remarkable phenomena such as state teleportation and an exponential speed-up in computation time.</p>
<p>Much of his research deals with the theory of quantum entanglement and understanding how the properties of entanglement lead to novel paradigms for information transmission.</p>
<p>Department: &#160;Physics</p>
<p>Homepage:&#160;<a href="http://www.physics.siu.edu/&#126;echitamb/" target="_blank" title="echitamb homepage">http://www.physics.siu.edu/&#126;echitamb/</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Bidyut Gupta</h3>

    <h4 class="department">Professor</h4>
                
<div class="leftcol">
            
        <div class="person-contact">
    <p><p>Office: Engineering A0405B</p>
<p>Phone: (618) 453-7194</p>
Email: <a href="mailto:bidyut@cs.siu.edu" title="mailto">bidyut@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Computer Science, University of Calcutta</p>
<p>Current Research Interests:</p>
<p>Distributed computing, cluster computing, mobile computing, routing in static and mobile ad-hoc networks, design of peer-to-peer network architecture.</p>
<p>Homepage:&#160;<a href="http://www.cs.siu.edu/gupta" target="_blank" title="facultypage">http://www.cs.siu.edu/gupta</a><a href="http://www.cs.siu.edu/gupta" target="_blank" title="facultypage"><br/>
</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Henry Hexmoor</h3>

    <h4 class="department">Associate Professor</h4>
                
<div class="leftcol">
            
        <div class="person-contact">
    <p><p>Office: Engineering A0409C</p>
<p>Phone: (618) 453-6047</p>
Email: <a href="mailto:hexmoor@cs.siu.edu" title="mailto">hexmoor@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Computer Science, University at Buffalo</p>
<p>Current Research Interests:</p>
<p>Artificial Intelligence, Multi-Agent Systems, Cognitive Science, Mobile Robotics, Knowledge Representation and Reasoning.</p>
<p>Homepage:&#160;<a href="http://www.cs.siu.edu/&#126;hexmoor" title="facultypage">http://www.cs.siu.edu/&#126;hexmoor</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Wen-Chi Hou</h3>

    <h4 class="department">Professor</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Engineering A0405</p>
<p>Phone: (618) 453-6040</p>
Email: <a href="mailto:hou@cs.siu.edu" title="mailto">hou@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Computer Engineering and Science, Case Western Reserve University</p>
<p>Current Research Interests:</p>
<div>Statistical databases, query optimization, data stream processing, spatial data structures.</div>
<div></div>
<div>Homepage: <a href="http://www.cs.siu.edu/hou" target="_blank" title="facultypage">http://www.cs.siu.edu/hou</a></div></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Shiva Houshmand</h3>

    <h4 class="department">Assistant Professor</h4>
                
<div class="leftcol">
            
        <div class="person-contact">
    <p><p>Office: Engineering A0407D</p>
<p>Phone: (618) 453-6054</p>
Email: <a href="mailto:shiva@cs.siu.edu" target="_blank" title="email">shiva@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Computer Science, Florida State University</p>
<p>Current Research Interests:<br/>
<br/>
 Authentication, Usable security, Information security, Computer and Network security and Digital forensics.<br/>
<br/>
 Homepage: <a href="http://www.cs.siu.edu/&#126;shiva" target="_blank" title="homepage">http://www.cs.siu.edu/&#126;shiva</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Namdar Mogharreban</h3>

    <h4 class="department">Associate Professor</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Engineering A0407</p>
<p>Phone: (618) 453-6059</p>
Email: <a href="mailto:namdar@cs.siu.edu" title="mailto">namdar@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p><br/>
 <span>Education: Ph.D. Computer Based Education, Southern Illinois University<br/>
</span><br/>
 <span>Current&#160;Research Interests:</span></p>
<p><span></span>Development, deployment and evaluation of a Learning Objects and its ramifications for e-learning.</p>
<div>Homepage:&#160;<a href="http://www.cs.siu.edu/&#126;namdar" target="_blank" title="facultypage">http://www.cs.siu.edu/&#126;namdar</a></div>
<div></div></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Christos Mousas</h3>

    <h4 class="department">Assistant Professor</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Engineering A0405H</p>
<p>Phone: (618) 453-6055</p>
Email:&#160;<a href="#" target="_blank" title="mailto:christos@cs.siu.edu ">christos@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. in Informatics, University of Sussex<br/>
<br/>
 Current&#160;Research Interests:</p>
<p>Computer Graphics, Computer Animation, Virtual Reality, Game Development</p>
<p>Homepage:&#160;<a href="http://www.cs.siu.edu/&#126;christos" target="_blank" title="facultypage">http://www.cs.siu.edu/&#126;christos</a></p>
<div></div></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Shahram Rahimi</h3>

    <h4 class="department">Professor and Chair</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Engineering A0319D</p>
<p>Phone: (618) 453-6033</p>
Email: <a href="mailto:rahimi@cs.siu.edu" title="mailto">rahimi@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D., Computational Sciences, University of Southern Mississippi</p>
<p>Current Research Interests:</p>
<p>Computational intelligence and soft computing, multi-agent systems, distributed computing.</p>
<p>Homepage:&#160;<a href="http://www.cs.siu.edu/&#126;rahimi" target="_blank" title="facultypage">http://www.cs.siu.edu/&#126;rahimi</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Diane Rudolph</h3>

    <h4 class="department">Lecturer</h4>
                
<div class="leftcol">
            
        <div class="person-contact">
    <p><p>Office: Engineering A0307A</p>
<p>Phone: (618) 453-6036</p>
Email:&#160;<a href="mailto:drudolph@cs.siu.edu" title="mailto">drudolph@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: &#160;MS Computer Science, Kansas State University&#160;</p>
<p>Current Research Interests:</p>
<p>Semantic Web, Software Engineering, Distributed Databases</p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>S. Yaser Samadi</h3>

    <h4 class="department">Associate Professor</h4>
                
<div class="leftcol">
            
        <div class="person-contact">
    <p><p>Office: Neckers 281</p>
<p>Phone: (618) 453-6502</p>
Email:&#160;<a href="mailto:ysamadi@siu.edu" title="mailto ysamadi@siu.edu"><span>ysamadi@siu.edu</span></a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Mathematics, University of Georgia<br/>
<br/>
 Current Research Interests:</p>
<p>Multivariate time series analysis - Symbolic data analysis - Dimension reduction for time series data - Sequential analysis for dependent and independent data - Bayesian analysis - Multivariate statistical inference and analysis.</p>
<p>Department: &#160;Mathematics</p>
<p>Homepage: <a href="http://math.siu.edu/faculty-staff/faculty/samadi.php" target="_blank" title="homepage">http://math.siu.edu/faculty-staff/faculty/samadi.php</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Koushik Sinha</h3>

    <h4 class="department">Assistant Professor</h4>
                
<div class="leftcol">
           
        <div class="person-contact">
    <p><p>Office: Engineering A0407A</p>
<p>Phone: (618) 453-3922</p>
Email:&#160;<br/>
 <a href="mailto:koushik.sinha@cs.siu.edu" title="mailto"><span>koushik.sinha</span>@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Computer Science, Jadavpur University<br/>
<br/>
 Current Research Interests:</p>
<p>Mobile computing, Wireless Ad hoc and Sensor Networks, Complex Networks, Social Computing, Crowdsourcing Systems</p>
<p>Homepage: <a href="http://www.cs.siu.edu/&#126;ksinha" title="sinha">http://www.cs.siu.edu/&#126;ksinha</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Tessema Mengistu</h3>

    <h4 class="department">Lecturer</h4>
                
<div class="leftcol">
          
        <div class="person-contact">
    <p><p>Office: Engineering A0409E</p>
<p>Phone: (618) 453-6037</p>
<p>Email:&#160;<br/>
 <a href="mailto:tessema.mengistu@siu.edu" title="mailto">tessema.mengistu<wbr/>@siu.edu</a></p></p></div>
        </div>

            <div class="summary">
        <p><p>Education: PhD, 2019 (expected), Computer Science Southern Illinois University Carbondale</p>
<p>Current Research Interests:</p>
<p>Cloud Computing, Distributed Systems, Big Data Analytic, Internet Measurement</p>
<p>Website: <a href="http://www.cs.siu.edu/&#126;tmengistu" target="_blank" title="tessema">http://www.cs.siu.edu/&#126;tmengistu</a></p></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Nick Rahimi</h3>

    <h4 class="department">Lecturer</h4>
                
<div class="leftcol">
          
        <div class="person-contact">
    <p><p>Office: Engineering A0407E</p>
<p>Phone: (618) 453-6179</p>
Email: <a href="mailto:nick@cs.siu.edu" target="_blank" title="nick rahimi email">nick@cs.siu.edu</a></p></div>
        </div>

            <div class="summary">
        <p><br/>
 <span>Education: PhD. Prospect, Electrical &amp; Computer Engineering&#160;</span><span>2011 &#8211; 2015 (expected), Southern Illinois University</span><br/>
 Current&#160;Research Interests: 
<ul>
<li><span>&#8203;</span><span>Clinical Decision Support Systems</span></li>
<li><span>Security Analysis</span></li>
<li>Distributed System Applications</li>
<li>Network Security</li>
<li>Predictive Analytics</li>
</ul></p>
    </div>
        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Ming Yang</h3>

    <h4 class="department">Instructor</h4>
                
<div class="leftcol">
          
        <div class="person-contact">
    <p><p>Office: Engineering A0409G</p>
<p>Phone: (618)&#160;453-6057</p>
<p>Email:&#160;<br/>
 <a href="mailto:ming.yang@siu.edu" title="mailto">ming.yang@siu.edu<br/>
</a></p></p></div>
        </div>

            <div class="summary">
        <p><p>Education: Ph.D. Math, Texas A&amp;M University</p>
<p>Current Research Interests:</p>
<p>Machine learning, sparse optimization, tensor decomposition and its application, computational algebraic geometry</p></p>
    </div>
        </div>
    <hr/>
    

    </section>
                        
                    </div>
                </div>
            </div>
             </div>
         <a name="staff"></a>
         <div id="staff">
<div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><span class="fa fa-fw fa-compass"></span>Staff Details</h4>
                    </div>
                    <div class="panel-body">
                        <section class="block block-content" id="main-content">        
           
<div class="people-wrapper">
    
    <h3>Terri Elliott</h3>

    <h4 class="department">Office Administrator, Chair Assistant</h4>
                
<div class="leftcol">

        <div class="person-contact">
    <p><span>Office: Engineering A0319B</span><br/>
 <span>Phone: (618) 453-6041</span><br/>
 <span>Email:&#160;</span><a href="mailto:terri@cs.siu.edu" title="mailto">terri@cs.siu.edu</a></p></div>
        </div>

        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Andi Russell</h3>

    <h4 class="department">Graduate Program Assistant</h4>
                
<div class="leftcol">

        <div class="person-contact">
    <p><p>Office: Engineering A0319<br/>
 Phone: (618) 453-6042<br/>
 Email:&#160;<a href="mailto:gradinfo@cs.siu.edu">gradinfo@cs.siu.edu</a></p></p></div>
        </div>

        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>TBD</h3>

    <h4 class="department">Undergraduate Program Assistant</h4>
                
<div class="leftcol">

        <div class="person-contact">
    <p><span>Office: Engineering A0319</span><br/>
 <span>Phone: (618) 536-2327</span><br/>
 <span>Email:&#160;</span><a href="mailto:office1@cs.siu.edu" title="mailto">office1@cs.siu.edu</a></p></div>
        </div>

        </div>
    <hr/>
    

<div class="people-wrapper">
    
    <h3>Michael Barkdoll</h3>

    <h4 class="department">Computer Systems Architecture Specialist</h4>
                
<div class="leftcol">

        <div class="person-contact">
    <p><span>Office: Engineering A0311C</span><br/>
 <span>Phone: (618) 453-6051</span><br/>
 <span>Email:&#160;</span><span class="b"><a href="mailto:mbarkdoll@cs.siu.edu" title="mailto">mbarkdoll@cs.siu.edu</a></span></p></div>
        </div>

        </div>
    <hr/>
    

    </section>
                    </div>
                </div>
            </div>
          </div>

</div>

 </form>   
     <script>
         function myfunctionfaculty() {
             var x = document.getElementById('faculty');
             var y = document.getElementById('staff');
             if (x.style.display === 'block') {
                 y.style.display = 'none';

             } else {
                 x.style.display = 'block';
                 y.style.display = "none";
             }
         }
         function myfunctionstaff() {
             var x = document.getElementById('faculty');
             var y = document.getElementById('staff');
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
   


