<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.DateFormat"  import="java.util.Date" %>
<%@taglib prefix="sv" uri="http://www.springframework.org/tags/form" %>
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
                             <strong>Welcome <c:out value="${pageContext.request.userPrincipal.name }"></c:out> ! </strong> You Have No pending New Messages.
                        </div>
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                 <c:import url="main.jsp"/>
                   <div class="row">
                    <div class="col-lg-12 ">
                       <h5>Employee Management</h5>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#add" data-toggle="tab">Add Employee</a>
                            </li>
                            <li class=""><a href="#record" data-toggle="tab">Employee Record</a>
                            </li>
                            <li class=""><a href="#assign" data-toggle="tab">Assign to Project</a>
                            </li>
                            <li class=""><a href="#unassign" data-toggle="tab">Un-Assign from Project</a>
                            </li>
                            <li class=""><a href="#message" data-toggle="tab">Send Message</a>
                            </li>
						</ul>
						<c:if test="${param.msg != null }">
						<div class="alert alert-warning">
						<c:out value="${param.msg }"/>
						</div>
						</c:if>
							<c:if test="${msg != null }">
						<div class="alert alert-warning">
						<c:out value="${msg }"/>
						</div>
						</c:if>
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="add">
                                <h4>Add Employee in the System</h4>
                                <p>
                                <sv:form method="post" action="${pageContext.request.contextPath }/AddEmployee" commandName="emp">
                                Name: <sv:input type="text" path="name" class="form-control" />
                                Email: <sv:input type="text" path="email" class="form-control" />
                                Address: <sv:textarea path="address" class="form-control" /> 
                                Join Date: <sv:input type="text" path="join_date" class="form-control" value="<%=DateFormat.getDateInstance(DateFormat.SHORT).format(new Date()) %>" /> 
                                Leave Date: <sv:input type="text" path="leave_date" class="form-control" disabled="true"  />
                                Salary - CTC:  <sv:input type="text" path="salary" class="form-control" placeholder="per annum salary" />
                                Job Title:  <sv:input type="text" path="job_title" class="form-control" placeholder="enter job title" />
                              
                                Username:<sv:input type="text" path="username" class="form-control" placeholder="employee email will be the username" disabled="true" />

                                <BR><input type="submit" value="Add Employee" class="btn btn-primary">
                                </sv:form>
                                
                                    
								</p>
                            </div>
                            <div class="tab-pane fade" id="record">
                                <h4>View Employee Detail Record</h4>
                                <p>
                                <form method="post" action="${pageContext.request.contextPath }/SearchEmployeeByName" >
                                <input type="text" name="search" class="form-control" placeholder="Enter Employee Name" >
								<input type="submit" value="Search by Name" class="btn btn-primary">
								</form>
								<hr>
								<form method="post" action="${pageContext.request.contextPath }/SearchEmployeeByEmail" >
                                <input type="text" name="search" class="form-control" placeholder="Enter Employee Email" >
								<input type="submit" value="Search by Email" class="btn btn-info">
								</form>
								<hr>
								<form method="post" action="${pageContext.request.contextPath }/SearchEmployeeByProject" >
                                <input type="text" name="search" class="form-control" placeholder="Enter Employee Project Name" >
								<input type="submit" value="Search by Project Name" class="btn btn-warning">
								</form>
                                </p>
								
                            </div>
                            <div class="tab-pane fade" id="assign">
                                <h4>Assign Employee to Project</h4>
                                <form method="post" action="${pageContext.request.contextPath }/AssignEmployeeToProject">
                                <p>
                               <select name="eid" class="form-control">
                               <c:forEach var="e" items="${emp_list }">
                               <option value='<c:out value="${e.getId() }"/>'><c:out value="${e.getName() }"/> -- <c:out value="${e.getJob_title() }"/></option>
                               </c:forEach>
                               
                               </select><BR>
                               <select name="pid" class="form-control">
                               <c:forEach var="p" items="${proj_list }">
                               <option value='<c:out value="${p.getId() }"/>'><c:out value="${p.getName() }"/> -- <c:out value="${p.getClient_name() }"/></option>
                               </c:forEach>
                               </select>
                                <BR><input type="submit" value="Assign to project" class="btn btn-primary">
                                </p>
								</form>
                            </div>
                              <div class="tab-pane fade" id="unassign">
                                <h4>Un-Assign Employee from Project </h4>
                                <form method="post" action="${pageContext.request.contextPath }/UnAssignEmployeeToProject">
                                <p>
                               <select name="employee" class="form-control">
                              <c:forEach var="e" items="${emp_list }">
                               <option value='<c:out value="${e.getId() }"/>'><c:out value="${e.getName() }"/> -- <c:out value="${e.getJob_title() }"/></option>
                               </c:forEach>
                               </select><BR>
                               <select name="project" class="form-control">
                               <c:forEach var="p" items="${proj_list }">
                               <option value='<c:out value="${p.getId() }"/>'><c:out value="${p.getName() }"/> -- <c:out value="${p.getClient_name() }"/></option>
                               </c:forEach>
                               </select>
                                <BR><input type="submit" value="Un Assign from project" class="btn btn-primary">
                               </p>
								</form>
                            </div>
	
                             <div class="tab-pane fade" id="message">
                                <h4>Send Message to Employee</h4>
                               <form method="post" action="${pageContext.request.contextPath }/SendEmployeeMessage">
                                <p>
                                   <select name="employee" class="form-control">
                               <c:forEach var="e" items="${emp_list }">
                               <option value='<c:out value="${e.getId() }"/>'><c:out value="${e.getName() }"/> -- <c:out value="${e.getJob_title() }"/></option>
                               </c:forEach>
                               </select><BR>  
                                  Message: <textarea name="message" class="form-control"> </textarea>
                                   <BR><input type="submit" value="Send Message" class="btn btn-primary">
								</p>
								</form>
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
