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
        
       <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                
                <div class="span12">
			<form class="form-horizontal" action='${pageContext.request.contextPath }/login' method="POST">
			  <fieldset>
			    <div id="legend">
			    <c:if test='${param.status == "logout" }'> 
			    <c:out value="Logged Out Successfully"></c:out>
			    </c:if>
			      <h1>Login</h1>
			      <hr>
			      <c:if test='${param.status == "fail" }'> 
			    <c:out value="Invalid Credentials"></c:out>
			    </c:if>
			    </div>
			    <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                            <label>Enter Username</label>
                            <input class="form-control" name="username" type="text"/>
                            <p class="help-block"></p>
                        </div>
                        <div class="form-group">
                            <label>Enter your Password</label>
                            <input class="form-control" name="password" type="password"/>
                            <p class="help-block"></p>
                        </div>
                         <div class="form-group">
                            <input type="submit" value="login" class="btn btn">
                        </div>

</div>

			    
			  </fieldset>
			</form>
		</div>
                
			</div>
       			</div>
       		</div>
       	      
       <c:import url="footer.jsp"/>
       </div>
</body>
</html>