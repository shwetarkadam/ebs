<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
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
                       <h5>Employee Record</h5>
                     <div class="alert alert-danger">
                              You searched for "<c:out value="${search_email }"/>"
                        </div>
                    <c:forEach var="e" items="${list_search }" >
							<h4>	<c:out value="${e.getName() }"/> <c:if test="${e.getLeave_date() != null }">**past employee</c:if></h4>
							Email: <c:out value="${e.getEmail() }"/><BR>
							Address: <c:out value="${e.getAddress() }"/><BR>
							Joining Date: <c:out value="${e.getJoin_date() }"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							<c:if test="${e.getLeave_date() != null }">
							Leave Date: <c:out value="${e.getLeave_date() }"/>
							</c:if>
							<BR>
							Salary: <c:out value="${e.getSalary() }"/>
							<BR>
							Job Title: <c:out value="${e.getJob_title() }"/>
								
					</c:forEach>
                    </div>
                  </div>     
        </div>
      </div>
     </div>  
</body>
</html>