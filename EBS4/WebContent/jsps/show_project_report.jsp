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
 
  <c:set var="i" value="0"></c:set>         
          
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
                       <h2>Detail Project Report</h2>
                       <hr>
                     <!--  emp_list,proj_list,list -->
                     <c:forEach items="${list }" var="p1">
                     		<c:forEach items="${proj_list }" var="p">
                     		<c:if test="${i == 0 }">
                     		<c:if test="${p1.getPid() == p.getId()}">
                     		<c:set var="i" value="1"/> <!-- if control goes inside this then i=1 -->
                     		 <h3>Project: <c:out value="${p.getName() }"/></h3>
                     		 <font color="gray" size="4">Client Name:  <c:out value="${p.getClient_name()}"/> </font><BR>
                     		 Start Date: <c:out value="${p.getStart_date()}"/> <BR>
                     		 Estimated End Date: <c:out value="${p.getEstimated_end_date()}"/> <BR>
                     		 <c:if test="${p.getEnd_date() != null}"> End Date: <c:out value="${p.getEnd_date() }"/> </c:if>
                     		 <hr>
                     		 <font color="gray" size="4">Budget Alloted: Rs.  <c:out value="${p.getBudget()}"/> </font><BR>
                     		 Status: <c:out value="${p.getStatus()}"/>
                     		 </c:if>
                     		</c:if>
                     		
                     	</c:forEach>
                     </c:forEach>
                       <hr>
                       <h3>List of Employees working on the project </h3>
                     <c:forEach items="${emp_list }" var="e">
                    	 <c:forEach items="${list }" var="e1">
                    	 	<c:if test="${e.getId() == e1.getEid() }">
                    	 		<font color="gray" size="4"><c:out value="${e.getName() }"></c:out> <c:if test='${e1.getRole() == "manager" }'> -- Manager</c:if> 
                    	 		</font> -- <c:out value="${e.getJob_title() }"></c:out> [<c:out value="${e.getEmail() }"></c:out>]
                    	 		<BR>
                    	 	</c:if>
                    	 
                    	 </c:forEach>
                     
                     </c:forEach>
                  </div>
                  </div>
                  </div>
                  </div>
                  </div>
                       
</body>
</html>