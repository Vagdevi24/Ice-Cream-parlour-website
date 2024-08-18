<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    
    String Email = (String)session.getAttribute("email");
    String total=request.getParameter("gt");
    String Name=request.getParameter("name");
    String address=request.getParameter("address");
    String city=request.getParameter("city");
    String pincode=request.getParameter("pincode");
    String phone=request.getParameter("phone");
    String s="";
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vagdevi","vagdevi");
        String sql="select productname from cart where email=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, Email);
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next())
        {
           s+=rs.getString(1)+",";
        }

        // out.print(Email+" "+total+" "+Name+" "+address+" "+city+" "+pincode+" "+phone);
    }
    catch(Exception e){
        out.print(e);
    }

%>
    
            

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title> payment Form</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                width: 100%;
                font-family: montserrat;
                background-image: url("https://imgstaticcontent.lbb.in/lbbnew/wp-content/uploads/2018/04/19081049/CreamCreations1.jpg?fm=webp&w=750&h=500&dpr=1");
                height: 100vh;
            background-position: center;
               background-repeat: no-repeat;
               background-size: cover;
            }
            .center{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                width: 400px;
                background: white;
                border-radius: 10px;
                margin-top: 10px;
                /* margin-bottom: 40px; */
            }
            .center h1{
                text-align: center;
                /* padding: 0 0 20px 0; */
                color:#080000;
            }
            .center form{
                padding: 0 40px;
                box-sizing: border-box;
            }
            form .text-field{
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 20px 0;
            }
            .text-field input{
                width: 100%;
                padding: 0 5px;
                height: 40px;
                font-size: 16px;
                border: none;
                background: none;
                outline: none;
            }
            .text-field label{
                position: absolute;
                top: 50%;
                left: 5px;
                color: #adadad;
                transform: translateY(-50%);
                font-size: 16px;
                pointer-events: none;
                transition: .5s;
            }
            .text-field span::before{
                content: '';
                position: absolute;
                top: 40px;
                left: 0;
                width: 0;
                height: 3px;
                background: #2619d9;
                transition: .5s;
            }
            .text-field input:focus ~ label,
            .text-field input:valid ~ label{
                top: -5px;
                color: #2619d9;
            }
            .text-field input:focus ~ span::before,
            .text-field input:valid ~ span::before{
                width: 100%;

            }
            .pass{
                margin: -5 px 0 20px 5px;
                color: #080000;
                cursor: pointer;
            }
            .pass:hover{
              text-decoration: underline;
            }
            input[type="submit"]{
                width: 100%;
                height: 50px;
                border: 1px solid;
                background:#080000;
                border-radius: 25px;
                font-size: 18px;
                color: #e9f4fb;
                font-weight: 700;
                cursor: pointer;
                outline: none;
            }
            input[type="submit"]:hover{
                border-color: green;
                transition: .5s;
            }
            .total {
              margin-top: 20px;
              display: flex;
              align-items: center;
              justify-content: space-between;
              font-size: 18px;
              font-weight: 700;
  }
        </style
    </head>
    <body>
    
      
    <div class="center">
               <h1>Payment</h1>
               <form action="paymentSucccess.jsp"  method="post" >
                <div class="text-field">
                  <input type="text" id="card-name" name="card-name">
                  <span></span>
                    <label>Cardholder Name:</label>
                </div>
                <div class="text-field">
                  <input type="text" id="card-number" name="card-number" >
                    <span></span>
                    <label>Card Number:</label>
                </div>
                <div class="text-field">
                  <input type="text" id="expiration-date" name="expiration-date" >
                <span></span>
                <label>Expiration Date : MM/YY</label>
                </div>

               <div class="text-field">
                <input type="text" id="cvv" name="cvv">
                <span></span>
                <label>CVV:</label>
                </div>
                <div style="color:#2619d9;">
                  <label >Card Type:</label>
                  <select id="card-type" name="card-type">
                      <option value="visa">Visa</option>
                      <option value="mastercard">Mastercard</option>
                      <option value="discover">Discover</option>
                      <option value="americanexpress">American Express</option>
                      
                    </select>
                <span></span>
                
                </div>
                <hr>
                <center><b><p style="font-size: medium;">PhonePay / GooglePay / PayTM</p></b></center>
                <div class="text-field">
                <input type="text" id="cvv" name="cvv" >
                <span></span>
                <label>UPI Id</label>
                </div>
                
                
                <div class="total">
                <span>Total:</span>
                 <span id="gt" name="total"><%= total %></span>
                  </div>
                <input type="submit" value="Place Order">
                <br>
                <br>

                <input type="hidden" value="<%=Email%>" name="email">
                <input type="hidden" value="<%=total%>" name="total">
                <input type="hidden" value="<%=Name%>" name="Name">
                <input type="hidden" value="<%=address%>" name="address">
                <input type="hidden" value="<%=city%>" name="city">
                <input type="hidden" value="<%=pincode%>" name="pincode">
                <input type="hidden" value="<%=phone%>" name="phone">
                <input type="hidden" value="<%=s%>" name="s">





               </form>
    </div>
    </body>
    </html>


