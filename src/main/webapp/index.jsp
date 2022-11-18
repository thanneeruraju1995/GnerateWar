<%@ page import = "java.util.ResourceBundle" %> 
<% ResourceBundle resource = ResourceBundle.getBundle("test");
 
String version=resource.getString("version");%>
 
<%=version %>
<html>
<body>
<h2>War file deployed into amazon EC2 instance using github 
"Successfully for the first project using Maven"</h2>
 <h3> CICD project completed with Ansible by using Roles concept</h3>
 <h4>Modified the Pom for new war plugins</h4>
</body>
</html>
