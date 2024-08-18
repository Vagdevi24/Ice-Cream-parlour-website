<html>
    <head>
        <title>Contact us page</title>
        <link rel="stylesheet"  href="contact.css"/>
    </head>
    <body>
        <section>
            <div class="container">
            <div class="contactInfo">
             <div>
                <h2>Contact Info</h2>
                <ul class="info">
                    <li>
                        <span>
                            <img src="location.png" width="50px">
                        </span>
                        <span>Gottumukala Road<br>
                        Kanchikacherla,521180<br>
                        NTR district</span>

                    </li>
                    <li>
                        <span>
                            <img src="https://freepngimg.com/thumb/gmail/77580-webmail-address-mail-yahoo!-email-icon.png" width="50px">
                        </span>
                        <span><a href="mailto:abcdef@gmail.com" class="mail">vagdevimarisetti1@gmail.com</a> <br></span>
                    </li>
                    <li>
                        <span>
                            <img src="https://thumbs.dreamstime.com/z/white-cell-logo-call-icon-icon-phone-tube-dark-background-cell-logo-call-icon-icon-phone-tube-dark-background-133800148.jpg" width="50px">
                        </span>
                        <span>9876543210<br></span>
                    </li>

                </ul>
             </div>
             
             <ul class="sci">
                <li><a href="https://www.facebook.com/"><img src="https://www.seekpng.com/png/full/470-4701717_facebook-icon-gray-circle-facebook-logo-pequeo-blanco.png" width="50px"></a></li>
                <li><a href="https://www.instagram.com/"><img src="https://www.seekpng.com/png/full/472-4727621_instagram-logo-png-format-click-here-to-download.png" width="50px"></a></li>
                <li><a href="https://www.twitter.com/"><img src="https://www.seekpng.com/png/full/5-54303_twitter-introduces-a-new-app-for-windows-twitter.png" width="50px"></a></li>
                <li><a href="https://www.linkedin.com/"><img src="https://www.seekpng.com/png/full/301-3017770_linkedin-button-linkedin-profinder-logo-png.png" width="50px"></a></li>
                

             </ul> 
            </div>
             
            <div class="contactForm">
                <h2>Send a Message</h2>
                <form action="contact.jsp" method="post">
                <div class="formBox" >
                    <div class="inputBox w50">
                        <input type="text" required name="Fname" >
                        <span> Name</span>
                        
                    </div>
                    
                    <div class="inputBox w50">
                        <input type="email" required name="Email" 
                                                               <%
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
                                                             %>    >
                        <span>Email Address</span>
                        
                    </div>
                    <div class="inputBox w50">
                        <input type="text" required name="mb">
                        <span>Mobile Number</span>
                        
                    </div>
                    <div class="inputBox w100">
                        <textarea  required name="msg"></textarea>
                        <span>Write your message here...</span>
                        
                    </div>
                    <div class="inputBox w100">
                        <input type="submit" value="Send">
                        
                    </div>

                </div>
                </form>

            </div>
            </div>
        </section>
    </body>
</html>