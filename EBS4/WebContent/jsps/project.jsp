<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sv" uri="http://www.springframework.org/tags/form" %>
<%@page import="java.text.DateFormat"  import="java.util.Date" %>

<body>
     
           
          
    <div id="wrapper">
         <c:import url="header.jsp"/>
        
       <c:import url="sidebar.jsp"/>
        
        
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>EBS System - User Dashboard</h2>   
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
                       <h5>Project Management</h5>
                       <c:if test="${msg != null }" >
                        <div class="alert alert-warning">
                             <c:out value="${msg }"></c:out>
                        </div>
                        </c:if>
                        <c:if test="${param.msg != null }" >
                        <div class="alert alert-warning">
                             <c:out value="${param.msg }"></c:out>
                        </div>
                        </c:if>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#add" data-toggle="tab">Add Project</a>
                            </li>
                            <li class=""><a href="#status1" data-toggle="tab">Project Status</a>
                            </li>
                            <li class=""><a href="#broadcast" data-toggle="tab">Broadcast</a>
                            </li>
                            <li class=""><a href="#closure" data-toggle="tab">Project Closure</a>
                            </li>
							<li class=""><a href="#change" data-toggle="tab">Change Manager</a>
                            </li>
                        </ul>
                        
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="add">
                                <h4>Add project in the system</h4>
                                <p>
                                <!-- modelAttribute="proj" in sv form tag -->
                              <sv:form method="post" action="${pageContext.request.contextPath }/AddProject" modelAttribute="proj">
                              Project Name: <sv:input type="text" path="name" class="form-control" />
                              Project Start Date :<sv:input type="text" path="start_date" class="form-control" value="<%=DateFormat.getDateInstance(DateFormat.SHORT).format(new Date()) %>" /> 
                              Estimated End Date: <sv:input type="text" path="estimated_end_date" class="form-control" value="<%=DateFormat.getDateInstance(DateFormat.SHORT).format(new Date()) %>" /> 
                              End Date: <sv:input type="text" path="end_date" class="form-control" disabled="true" />
                              Client Name: <sv:input type="text" path="client_name" class="form-control" />
                              Total Project Budget: <sv:input type="text" path="budget" class="form-control" placeholder="Enter total budget of the project" />
                              Status: <sv:input type="text" path="status" class="form-control" value="open" /><BR>
                              Select Manager:
                 				<sv:select path="manager_id" class="form-control">
                               <c:forEach var="e" items="${emp_list }">
                               <option value='<c:out value="${e.getId() }"/>'><c:out value="${e.getName() }"/> -- <c:out value="${e.getJob_title() }"/></option>
                               </c:forEach> 
								</sv:select>
                               <input type="submit" value="Add Project" class="btn btn-warning">
                              </sv:form>
                               
                              
                               
                                   
                                </p>
                            </div>
                            <div class="tab-pane fade" id="status1">
                            <br>
                                <div align="left"> <font size="5" color="blue">All Active Projects</font>  &nbsp;&nbsp;&nbsp;&nbsp;<a href="#">All Past/Completed Projects </a></div> 
                               <c:forEach items="${proj_list }" var="p">
                               <c:if test='${p.getStatus() == "open" }'>
                               <h3><c:out value="${p.getName() }"/></h3>
                               Start Date: <c:out value="${p.getStart_date() }"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||
                               Est. End Date: <c:out value="${p.getEstimated_end_date() }"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||
                               Client Name: <c:out value="${p.getClient_name() }"/>
                                <BR>
                              <form method="post" action="${pageContext.request.contextPath }/showProjectReport">
                               <input type="text" style="display:none" name="pid" value='<c:out value="${p.getId() }"/>' />
                               <input type="submit" value="View Detail Report" class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              </form>
                               
                               </c:if>
                                <hr>
                               </c:forEach>
                              
                               
                                
                               
                                
                                
                         
								
                            </div>
                            <div class="tab-pane fade" id="broadcast">
                                <h4>Broadcast message to entire project team</h4>
                               <p>
                                   <select name="project" class="form-control">
                               <option>All projects from DB</option>
                               </select><BR>  
                                  Message: <textarea name="message" class="form-control"> </textarea>
                                   <BR><input type="submit" value="Broadcast Message" class="btn btn-primary">
								</p>

                            </div>
                            
                             <div class="tab-pane fade" id="closure">
                                <h4>Project closure</h4>
                                <div id="msg"></div>
								<p id="error1"></p>
									<form action='${pageContext.request.contextPath}/archive'  method="post">
                                   <select name="proj_name" class="form-control">
                               <!--  <option>All projects from DB</option>-->
                                 <c:forEach var="p" items="${proj_list }">
                               <option value='<c:out value="${p.getName() }"/>'><c:out value="${p.getName() }"/> </option>
                               </c:forEach>
                               </select><BR>  
                                  Comments: <textarea name="comment" class="form-control"> </textarea>
                                   <BR><input type="submit" value="Add Project to Archives" class="btn btn-primary">
								
								</form>

                            </div>
								<div class="tab-pane fade" id="change">
                                <h4>Change Manager</h4>
                                <form method="post" action="${pageContext.request.contextPath }/ChangeManager">
                                <p>
                                Select Project:
                                <select name="pid" class="form-control">
                                  <c:forEach var="p" items="${proj_list }">
                               <option value='<c:out value="${p.getId() }"/>'><c:out value="${p.getName() }"/> -- <c:out value="${p.getClient_name() }"/></option>
                               </c:forEach></select><BR>  
                                  Select Manager:
                                 <select name="eid" class="form-control">
                                  <c:forEach var="e" items="${emp_list }">
                               <option value='<c:out value="${e.getId() }"/>'><c:out value="${e.getName() }"/> -- <c:out value="${e.getJob_title() }"/></option>
                               </c:forEach></select>
                                  
                                   <BR><input type="submit" value="Change Manager" class="btn btn-primary">
								</p></form>

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
