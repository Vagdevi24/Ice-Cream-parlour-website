<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String email = (String)session.getAttribute("email");
    if(email == null){%>
        <script> alert("Please login to contact us") </script>
    
        <jsp:include page="index.jsp" />
        <%
    }
    else{
        String Name = request.getParameter("Fname");
        String Email = request.getParameter("Email");
        String  Mobile= request.getParameter("mb");
        String Message = request.getParameter("msg");
        

        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vagdevi","vagdevi");
    
            String sql = "insert into contact values(?,?,?,?)";

            PreparedStatement pstmt = conn.prepareStatement(sql);

            pstmt.setString(1,Name);
            pstmt.setString(2,Email);
            pstmt.setString(3,Mobile);
            
            pstmt.setString(4,Message);

            int result = pstmt.executeUpdate();

            if(result==1){ %>
                <script> alert("We received your message. We will revert back shortly") </script>
                <jsp:include page="index.jsp"/>
            <%
            }
            else{ %>
                <script>alert("Some Error occured please try again");</script>
                <jsp:include page="index.jsp"/>
            <%
            }
        }
        catch(Exception e){ %>
            <script> alert("Some Exception occured please try again"); </script>
            <jsp:include page="index.jsp"/>
        <%
        }

        
    }

%>