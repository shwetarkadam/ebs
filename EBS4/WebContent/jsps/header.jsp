<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>E-Business Management - EBS</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="resources/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="resources/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="resources/css/custom.css" rel="stylesheet" />
    
</head>
<body>

<div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="resources/img/logo.png" />

                    </a>
                    
                </div>
              
                <span class="logout-spn" >
                 <c:choose>
  <c:when test="${pageContext.request.userPrincipal.name == null}"> </c:when>
  <c:otherwise><a href="${pageContext.request.contextPath }/logout" style="color:#000000;">LOGOUT</a>  </c:otherwise>
</c:choose>
                  

                </span>
            </div>
        </div>
</body>

  <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="resources/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="resources/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="resources/js/custom.js"></script>
    