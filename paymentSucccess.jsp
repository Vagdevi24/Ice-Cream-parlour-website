<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Random" %>

<%
    

    try {
        
                  String Email = (String)session.getAttribute("email");
                  String total=request.getParameter("total");
                  String Name=request.getParameter("Name");
                  String address=request.getParameter("address");
                  String city=request.getParameter("city");
                  String pincode=request.getParameter("pincode");
                  String phone=request.getParameter("phone");
                  String s=request.getParameter("s");

                  Class.forName("oracle.jdbc.driver.OracleDriver");
                  Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vagdevi","vagdevi");
                  String sql="insert into ordertab values(?,?,?,?,?,?,?,?)";
                  PreparedStatement pstmt = conn.prepareStatement(sql);


                  
                  pstmt.setString(1,Email);
                  pstmt.setString(2,s);
                  pstmt.setString(3,total);
                  pstmt.setString(4,Name);
                  pstmt.setString(5,address);
                  pstmt.setString(6,pincode);
                  pstmt.setString(7,city);
                  pstmt.setString(8,phone);
                  int res1 = pstmt.executeUpdate();
                  
                   

                  Random random = new Random();
                  StringBuilder id = new StringBuilder();

                  while(id.length() <= 22){
                     id.append(random.nextInt(10));
                  }

                  String Tid = "T"+id.toString();

                  String sql1 = "insert into payments values(?,?,?)";
                  PreparedStatement pstmt1 = conn.prepareStatement(sql1);
                  pstmt1.setString(1,Email);
                  pstmt1.setString(2,Tid);
                  pstmt1.setString(3,total);
                  int res2 = pstmt1.executeUpdate();  
                  String sql_del = "delete from cart where email=?";
                  PreparedStatement pstmt_del = conn.prepareStatement(sql_del);
                  pstmt_del.setString(1,Email);
                  pstmt_del.executeUpdate();
                  if(res1==1 && res2==1){  %>
                      <!-- <script>alert("Your order is Placed");</script> -->
                     <center><img src="https://media.tenor.com/0AVbKGY_MxMAAAAC/check-mark-verified.gif" alt="Your GIF" width="500" height="500"></center>
                      <center><h1>Order Placed</h1></center>
                     <!-- <jsp:include page="index.jsp"/> -->
                     <center><button onclick="home()">Home</button></center>
                  <%
                  }
                  else{ %>
                     <script>alert("Something went wrong. Please Try again!!");</script>

                 <%   
                  }
                  
        
             
            }
        
              
               catch (Exception e) {
                  out.println(e);

               }
               
%>
<script>
   function home(){
      window.location.href="http://localhost:8081/icecream/index.jsp";
   }
</script>
