<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vagdevi","vagdevi");
        Statement stmt = conn.createStatement();
        String sql = "select * from users";
        int s1=stmt.executeUpdate(sql);
        ResultSet rs = stmt.executeQuery(sql);
        
%>
<style>
table {
    border-collapse: collapse;
    width: 100%;
    border-color:darksalmon ;
  }

  th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color:darksalmon;
  }

  tr:hover {
    background-color:lightslategray;
  }
  .nuser{
              margin-top: 20px;
              display: flex;
              align-items: center;
              justify-content:flex-start;
              font-size: 23px;
              font-weight: 700;
              color:maroon;
  }
</style>
<div class="nuser">
<span>No of users:</span>
<span name="u"><%= s1 %></span>
</div>
<table border="1px">
    <tr>
        <th>Name</th>
        <th>Email</th>
        
    </tr>
<%
    while(rs.next()){
%>
    <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        
    </tr> 
<%       
    }
    }
    catch(Exception e){
        out.println(e);
    }
%>
</table>