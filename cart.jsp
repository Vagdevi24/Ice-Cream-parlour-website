<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    

    try {
        String productname=request.getParameter("name");
        String Price=request.getParameter("price");
        String Email = (String)session.getAttribute("email");
                  Class.forName("oracle.jdbc.driver.OracleDriver");
                  Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vagdevi","vagdevi");
                  String sql = "INSERT INTO cart VALUES (?, ?, ?)";

                  PreparedStatement pstmt = conn.prepareStatement(sql);
                  pstmt.setString(1, Email);
                  pstmt.setString(2, productname);
                  pstmt.setString(3, Price);
                  
                  int result = pstmt.executeUpdate();
                  if(Email==null){ %>
                    <script> window.alert("you should login") </script>
                    <jsp:include page="Login1.html"/>
                

                    <%
                }
                else{
                
                  if(result==1){ %>
                    <script> window.alert("Added to cart") </script>
                    <jsp:include page="menu.jsp"/>
                <%
                }
                
                
            }
        }
              
               catch (Exception e) {
                  out.println(e);

               }%>

%>