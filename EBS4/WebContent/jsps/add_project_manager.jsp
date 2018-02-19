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
                  <c:if test="${msg != null }">
                  <div class="alert alert-warning">
                             <c:out value="${msg }"/>
                        </div>
                 </c:if>
                 <br>
               <h4>Assign Manager</h4>
               Project: <c:out value="${p.getName() }"></c:out>
               <br>
                 <form method="post" action="${pageContext.request.contextPath }/AssignManager">
                 <c:out value="${p.getId() }"></c:out>
                 <input  style="display:none" type="text" name="pid" value='<c:out value="${p.getId() }"></c:out>'  >
                 Select Manager:
                 <select name="eid" class="form-control">
                               <c:forEach var="e" items="${emp_list }">
                               <option value='<c:out value="${e.getId() }"/>'><c:out value="${e.getName() }"/> -- <c:out value="${e.getJob_title() }"/></option>
                               </c:forEach> 
				</select><BR><BR>
				<input type="submit" value="Assign Manager" class="btn btn-warning">
				</form>
              
                 
                 </div>
                 </div>
                 </div>
                 
</body>
</html>