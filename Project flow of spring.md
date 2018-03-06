Create Dispatcher Servlet:-
When we use Dispatcher  servlet ,it makes an entry in web.XML to reach out to that servlet.
Make changes in the web.XML
Create Bean config file:- From Dispatcher Servlet it will search for ebs-servlet.XML (bean configuration file) in the WEB-INF folder.
ebs-servlet.XML calls EBSController 


•We need to tell ebs-servlet.XML to scan EBSController and look for / for request mapping which we do by enabling component scan 

•To activate @Controller keyword , activate mvc: annotation  name space in cart-servlet.

Configure ViewResolver:-
Create view resolver bean and initialize prefix and suffix properties of the bean to access the jsps



FIlter call - Dispatcher servlet is called
Filter scans security-context.xml , web.xml and Beans.xml
Dispatccher Servelet evaluates ebs-servlet and the annotations are scanned

ANnotations:-@COntroller -for controllers
             @Component -for beans
      
 All the URLS r binded to a method which returns the name of the jsp once it is called eg / showHome()
 FOr every Url spring needs a mapped method
 
 
 
 
Spring faciltates passing object from controller to jsp :
1]ModelAnd View 2]Model-reuest scope 3] Session-sessionscope

User can pass the values from jsp to controller :
1]Spring form-complete form is assigned to an object
2]@RequestParam-single paramter

 
Passing attribute to jsp
1.) HttpSession session
Session method is session.setAttribute method
2.) For using request scope instead of session scope ,we use Model class method is model.addAttribute method
request.get context path gets the URL till port number
 While accessing db make web.XML listen to Beans.xml
 Using listener and context-param value
            
To read parameter from URL into Controller use
(@RequestParam("Id") String I'd)

Anything taken from URL is in String not int
 Another way to get context path is using expression language
${pageContext.request.contextPath}/Etc







JDBC COnnectivity
Database connectivity using Spring
1.)Create a reference of JdbcTemplate class.

2.)Initialize that reference in a setter or constructor.

3.)Inject BasicDataSource class in Account class using using Auto wiring (Look for component scan to scan model package)

Create a dataSource setter to set the reference and autowire it




GENERAL
1.) Annotation driven Injection :-Injection of one class(Vendor) to another class (Product) is done using component-scan and annotation-config

2.) To do the Database connectivity , use the basicDataSource class which is in commons dbcp.jar .This class asks for 4properties which is in jdbc.properties file
SPEL is used to assign the values to those properties which is done through p name spacing.

P name spacing is necessary for the bean to recognize the SPEL code(Spring expression language)
