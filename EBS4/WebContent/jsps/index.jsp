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
                     <h2>EBS  - User Dashboard</h2>   
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
                  
                    </div>
              </div>
              
              
             
              </div>
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
              
  
   
   
</body>
</html>
