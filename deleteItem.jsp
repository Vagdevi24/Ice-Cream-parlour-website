<%@ page import="java.sql.*" %>
<%
try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "vagdevi", "vagdevi");

    String product = request.getParameter("productname");

    
    String sql = "DELETE FROM cart WHERE productname=?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, product);
    pstmt.executeUpdate();

    response.sendRedirect("addtocart.jsp"); // Redirect back to the cart page after deletion
} catch (Exception e) {
    out.println(e);
}
%>
