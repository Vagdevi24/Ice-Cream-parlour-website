<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title> candidate Form</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                width: 100%;
                font-family: montserrat;
                background-image: url("https://images.pexels.com/photos/1352245/pexels-photo-1352245.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
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
            }
            .center h1{
                text-align: center;
                padding: 0 0 20px 0;
                color:black;
            }
            .center form{
                padding: 0 40px;
                box-sizing: border-box;
            }
            form .text-field{
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 30px 0;
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
                background:#080000;
                transition: .5s;
            }
            .text-field input:focus ~ label,
            .text-field input:valid ~ label{
                top: -5px;
                color:#080000;
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
        </style
    </head>
    <body>
      <%
    String tot=request.getParameter("gt");
    %>
    
      
    <div class="center">
               <h1>Candidate Details</h1>
               <form action="pay.jsp"  method="post" >
                <div class="text-field">
                  <input type="text" id="name" name="name"  required>
                  <span></span>
                    <label>Name</label>
                </div>
                <div class="text-field">
                  <input type="email" id="email"  <%
      String email=(String)session.getAttribute("email");
      if(email!=null)

      {
         %>
         value=<%=email%>
         <%
 
          
      }  
      else{
         %>
         value=" "
         <%
      }
      %>  required>
                    <span></span>
                    <label>Email</label>
                </div>
                <div >
                    <label>Address:</label>
                    <span></span><br>
                    <br>
                  <textarea id="address" name="address"  required></textarea>
                
                
                </div>

               <div class="text-field">
                <input type="number" id="pincode" name="pincode" required>
                <span></span>
                <label>pincode</label>
                </div>
                <div class="text-field">
                  <input type="text" id="city" name="city"  required>
                <span></span>
                <label>city</label>
                </div>
                <div class="text-field">
                  <input type="tel" id="phone" name="phone"  required>
                <span></span>
                <label>Phone number</label>
                </div>
                <input type="hidden" value="<%=tot%>" name="gt">
                <input type="submit" value="Pay">
                <br>
                <br>
               </form>
    </div>
    </body>
    </html>