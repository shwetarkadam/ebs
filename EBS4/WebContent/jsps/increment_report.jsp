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
                             <strong>Welcome User ! </strong> You Have No pending New Messages.
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                 <c:import url="main.jsp"/>
                   <div class="row">
                    <div class="col-lg-12 ">
                       <h1>Employee Salary Report</h1>
                       <c:if test="${list.size() == 0 }">
                       <div class="alert alert-info">
                             No increments have been given to this employee..
                        </div>
                       </c:if>
                       <c:set var="i" value="0"></c:set>
                      <c:forEach var="e" items="${emp_list }">
                      	<c:forEach var="e1" items="${list }">
                      			<c:if test="${i == 0 }">
                      			<c:if test="${e.getId() == e1.getEid() }">
                      			<font color="gray" size="4"><c:out value="${e.getName() }"></c:out>  
                    	 		</font> -- <c:out value="${e.getJob_title() }"></c:out> [<c:out value="${e.getEmail() }"></c:out>]
                    	 		<BR>
                    	 		Current Salary: <font color="gray" size="4">Rs. <c:out value="${e.getSalary() }"></c:out>  
                    	 		</font>
                    	 		<BR>
                    	 		                       <c:set var="i" value="1"></c:set>
                    	 		
                    	 		</c:if>
                      			</c:if>			
                      	</c:forEach>
                      </c:forEach>
                       <h3>Previous Salary Increment Records </h3>
							<c:forEach var="e1" items="${list }">
							Rs. <c:out value="${e1.getSalary() }"></c:out> <br>
							Date: <c:out value="${e1.getDate() }"></c:out>
							<hr>
							</c:forEach>			                      
						
						
                   </div>
                   </div>
                   </div>
                   </div>
                     

</body>
</html>