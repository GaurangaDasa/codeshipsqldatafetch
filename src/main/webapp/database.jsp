<html>

<head> welcome </head>


<body>
<br> <br>
<%@ page import="java.sql.*" %>

<% 


	try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://172.27.59.147:3306/world","root","root");
			PreparedStatement pst = con.prepareStatement("select name from country");
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {   %>
				<%= rs.getString(1)    %>
<%			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
%>

</body>


</html>