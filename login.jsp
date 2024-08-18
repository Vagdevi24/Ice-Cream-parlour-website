<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<%
    String Email = request.getParameter("email");
    String Password = request.getParameter("pwd");

    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vagdevi","vagdevi");

        String sql = "select * from users where email=? and password=?";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,Email);
        pstmt.setString(2,Password);

        int result = pstmt.executeUpdate();

        if(result==1){
            
            session.setAttribute("email",Email);
            response.sendRedirect("index.jsp");

        }
        else{ %>
            <script>alert("Invalid Email or Password");</script>
            <jsp:include page="Login1.html"/>
        <%
        }

    }
    catch(Exception e){ 
        out.println(e);                       
        %>
        <jsp:include page="Login1.html"/>
    <%
    }

%>