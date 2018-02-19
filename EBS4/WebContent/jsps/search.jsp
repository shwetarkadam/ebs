<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
     
           
          
    <div id="wrapper">
         <c:import url="header.jsp"/>
        
       <c:import url="sidebar.jsp"/>
        
        
        
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>HR System - User Dashboard</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome User ! </strong> You Have No pending New Messages.
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                 <c:import url="main.jsp"/>
                   <div class="row">
                    <div class="col-lg-12 ">
                       <h5>Search Zone</h5>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#employee" data-toggle="tab">Employee</a>
                            </li>
                            <li class=""><a href="#projects" data-toggle="tab">Projects</a>
                            </li>
                            <li class=""><a href="#clients" data-toggle="tab">Clients</a>
                            </li>
                           

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="employee">
                                <h4>Search Employee</h4>
                                <p>
                                 show   
                                 </p>
                            </div>
                            <div class="tab-pane fade" id="projects">
                                <h4>Search Projects</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                </p>

                            </div>
                            <div class="tab-pane fade" id="clients">
                                <h4>Search Clients</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                </p>

                            </div>
                            
	
                       
                    </div>
                    </div>
              </div>
              
              
              <div class="col-lg-4 col-md-4">
                        
              </div>
              </div>
              </div>
             
              
    </div>
    </div>
  
   
   
</body>
</html>
