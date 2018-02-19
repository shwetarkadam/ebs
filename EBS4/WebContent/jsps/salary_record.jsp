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
                     <h2>EBS System - Admin Dashboard</h2>   
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
                       <h5>Salary Record Management</h5>
                       <c:if test="${msg != null }">
						<div class="alert alert-warning">
						<c:out value="${msg }"/>
						</div>
						</c:if>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#record" data-toggle="tab">Current Salary</a>
                            </li>
                            <li class=""><a href="#increment" data-toggle="tab">Increments</a>
                            </li>
                            <li class=""><a href="#estimate" data-toggle="tab">Project Estimates</a>
                            </li>
                           

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="record">
                                <h4>Current Salary Record</h4>
                                <p>
                                <c:forEach var="e" items="${emp_list }">
                                <font size="4" color="grey"><c:out value="${e.getName() }"></c:out></font><BR>
								Salary: Rs.  <c:out value="${e.getSalary() }"></c:out> <BR>
								Job Title:  <c:out value="${e.getJob_title()  }"></c:out> <BR>
								<a class="btn btn-warning"  href="${pageContext.request.contextPath }/showIncrementReport?eid=<c:out value="${e.getId() }"></c:out>">Show Increment Report</a>
								
								<hr>
                                </c:forEach>
                                Give details of all employees current salary <BR>
                                Give option for selecting each employee for details with increments<BR>
                                    
								</p>
                            </div>
                            <div class="tab-pane fade" id="increment">
                                <h4>Increments Management</h4>
                                <form method="post" action="${pageContext.request.contextPath  }/IncrementSalary">
                                <p>
                                Select Employee:
                                 <select name="eid" class="form-control">
                               <c:forEach var="e" items="${emp_list }">
                               <option value='<c:out value="${e.getId() }"/>'><c:out value="${e.getName() }"/> -- <c:out value="${e.getJob_title() }"/></option>
                               </c:forEach>
                               </select>
                               Select Increment: 
                                <select name="increment_sal" class="form-control">
                               <option value="2">2% increment</option>
                               <option value="5">5% increment</option>
                               <option value="8">8% increment</option>
                               <option value="10">10% increment</option>
                               <option value="20">20% increment</option>
                               <option value="30">30% increment</option>
                               <option value="50">50% increment</option>
                               </select>
                               <BR>
                               <input type="submit" value="Increment Salary" />
                                 
								</p>
								</form>
                            </div>
                            <div class="tab-pane fade" id="estimate">
                                <h4>Project wise salary estimates</h4>
                                <p>
                                    give option for batch increments to entire project team including manager<BR>
                                    
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
   
  
   
   
</body>
</html>
