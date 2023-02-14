<%@ page import = "java.util.ResourceBundle" %> 
<% ResourceBundle resource = ResourceBundle.getBundle("test");
 
String version=resource.getString("version");%>
 
<%=version %>
<html>
<body>
<h2>War file deployed into amazon EC2 instance using github 
"Successfully for the first project using Maven"</h2>
 <h3>First CICD project completed for JAN batch by using jenkins</h3>
 </body>
</html>
