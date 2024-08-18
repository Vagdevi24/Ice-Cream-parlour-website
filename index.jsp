<html>
    <head>
        <title>
            Ice cream
        </title>
        <script>
            function addCart(n){
              var name=document.getElementById("name"+n).innerHTML;
              var price=document.getElementById("price"+n).innerHTML;
              window.location.href="http://localhost:8081/icecream/cart.jsp?name="+name+"&price="+price;
              
              
  
            }
  
  
            
          </script>
    </head>
    <body style="overflow: visible;">
        <header class="nav-sec">
            <nav>
                <ul >
                    <li><img src="Logo1.png" alt="image loading" width="80px" height="80px"></li>
                    <li>
                        <a href="index.jsp" class="btn">HOME</a>
                    </li>
                    <li>
                        <a href="menu.jsp">MENU</a>
                    </li>
                    
                    <li>
                        <a href="aboutus.html">ABOUT</a>
                    </li>
                    
                    
                    <li>
                        <a href="contactpage.jsp">CONTACT</a>
                    </li>
                    <li>
                        <a href="addtocart.jsp">CART</a>
                    </li>

                    <% 
                        String email = (String)session.getAttribute("email");
                        if(email != null){ %>
                            <li>  <a href=""> <%= email %> </a> </li>
                            <li>  <a href="logout.jsp">logout</a> </li>

                            <%
                        }
                        else{%>
                        <li> <a href="Login1.html">LOGIN</a> </li>
                        <li> <a href="admin.html">ADMIN LOGIN</a> </li>
                     <%
                        }
                    %>

                </ul>
            </nav>

            <div class="hero">
                <div class="left-box">
                    <p>
                        Shark Ice Cream
                    </p>
                    <h2>Enjoy Every Bite<br>Of Ice Cream</h2>
                    
                </div>
            </div>
        </header>
         
         <section class="about">
            <div class="left-about">
                <img src=" https://as2.ftcdn.net/v2/jpg/04/95/91/57/1000_F_495915785_w3uAlaII33FjZX37Iw2DM2b9l8ph0Q62.jpg " alt=" image loading">
            </div>
            <div class="right-about">
                 <h3 style="color:red";>ABOUT US</h3><br>
                 <p>Welcome to our ice cream parlor!
                     We're passionate about making delicious ice cream using locally-sourced ingredients and unique flavor combinations.
                      Our small-batch ice cream is handcrafted with care, and we take pride in offering a variety of flavors and toppings to satisfy every taste bud. 
                      Our team is dedicated to providing a fun and friendly atmosphere for all our customers.
                       We can't wait to serve you!</p>
                 
                </div>
         </section>

         <div class="title">
            <h2>Our Delicious Flavors</h2>
         </div>
         <section class="menu">
            <div class="item">
                <img src="https://fitfoodiefinds.com/wp-content/uploads/2021/05/Chocolate-Protein-Ice-Cream-09-650x975.jpg " alt="image... loading" class="item-1">
                <h4 id="name37">Chocolate protein<br>Ice Cream</h4>
                <p id="price37">500.00</p>
                <button  onclick="addCart(37)"  class="btn1">Add to cart</button>
            </div>
            <div class="item">
                <img src=" https://www.julieseatsandtreats.com/wp-content/uploads/2020/06/Rainbow-Ice-Cream-14-of-16-730x1095.jpg" alt="image... loading" class="item-1">
                <h4 id="name38">Rainbow<br>Ice Cream</h4>
                <p id="price38">205.00</p>
                <button  onclick="addCart(38)"  class="btn1">Add to cart</button>
            </div>
            <div class="item">
                <img src="https://chocolatecoveredkatie.com/wp-content/uploads/2022/06/Avocado-Ice-Cream-Recipe.jpg " alt="image... loading" class="item-1">
                <h4 id="name39">Avocado<br>Ice Cream</h4>
                <p id="price39">305.00</p>
                <button  onclick="addCart(39)"  class="btn1">Add to cart</button>
            </div>
            <div class="item">
                <img src="https://www.keep-calm-and-eat-ice-cream.com/wp-content/uploads/2023/01/Oreo-ice-cream-hero-05.jpg " alt="image... loading" class="item-1">
                <h4 id="name40">Oreo<br>Ice Cream</h4>
                <p id="price40">250.00</p>
                <button  onclick="addCart(40)"  class="btn1">Add to cart</button>
            </div>
            <div class="item">
                <img src=" https://thestayathomechef.com/wp-content/uploads/2018/07/Homemade-Ice-Cream-1-small.jpg" alt="image... loading" class="item-1">
                <h4 id="name41">Sugar Cone<br>Ice Cream</h4>
                <p id="price41">5.00</p>
                <button  onclick="addCart(41)"  class="btn1">Add to cart</button>
            </div>
            <div class="item">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Ube_Macapuno.jpg/800px-Ube_Macapuno.jpg " alt="image... loading" class="item-1">
                <h4 id="name42">Ube <br>Ice Cream</h4>
                <p id="price42">100.00</p>
                <button  onclick="addCart(42)"  class="btn1">Add to cart</button>
            </div>
            <div class="item">
                <img src=" https://www.foodandwine.com/thmb/2OffzZJxeW_2jTMr143M7RQYbIA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/ice-cream-sundae-with-homemade-caramel-FT-RECIPE0721-a3f7998964104a8094eccfd3b827cc56.jpg" alt="image... loading" class="item-1">
                <h4 id="name43">Sundae<br>Ice Cream</h4>
                <p id="price43">5.00</p>
                <button  onclick="addCart(43)"  class="btn1">Add to cart</button>
            </div>
         </section>
         <footer>
            <div class="container">
              <div class="row">
                <div class="col-md-6">
                  <h3>About Us</h3>
                  <p>We are a family-owned ice cream shop that has been serving our community for over 50 years. We are committed to using only the freshest ingredients and providing our customers with the best possible experience.</p>
                </div>
                <div class="col-md-3">
                  <h3>Links</h3>
                  <ul>
                    <li><a href="icecream.html">Home</a></li>
                    <li><a href="menu.html">Menu</a></li>
                    <li><a href="aboutus.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                  </ul>
                </div>
                <div class="col-md-3">
                  <h3>Follow Us</h3>
                  <ul class="social-media">
                    <li><a href="https://www.facebook.com/"><img src="https://www.seekpng.com/png/full/470-4701717_facebook-icon-gray-circle-facebook-logo-pequeo-blanco.png" width="50px"></a></li>
                    <li><a href="https://www.instagram.com/"><img src="https://www.seekpng.com/png/full/472-4727621_instagram-logo-png-format-click-here-to-download.png" width="50px"></a></li>
                    <li><a href="https://www.twiter.com/"><img src="https://www.seekpng.com/png/full/5-54303_twitter-introduces-a-new-app-for-windows-twitter.png" width="50px"></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </footer>
          
    </body>
    <style>
        .btn1{
          background-color: #f9a603;
          color: black;
          padding: 12px 20px;
          border: none;
          border-radius: 4px;
          cursor: pointer
        }
        .btn1:hover{
           background-color: #f9a603;
        }
        :root
{
    --background-image-color:linear-gradient(to right,#ff512f 0%,#f09819 51%,#ff512f 100%  );
    
}
*{

    box-sizing: border-box;
    margin:0;
    padding:0;
}
html{
    scroll-padding-top: 6rem;
    scroll-behavior: smooth;
}

body{
    /* padding: 1% 10%; */
    font-family: 'poppins',sans-serif 'arial';

    overflow: hidden;


}
.nav-sec{
    /* background-image:url("https://cdn.pixabay.com/photo/2015/09/09/20/06/bowl-932980_960_720.jpg"); */
    background-image:url("https://cdn.pixabay.com/photo/2018/06/09/23/54/i-cream-3465522_960_720.jpg");
    height: 100vh;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
header{
    background-color: transparent;
    height: 75px;
    /* position: sticky; */
    top: 0;
}

ul{
    list-style-type: none;
    display: flex;
    align-items: center;
    justify-content: space-evenly;

}
nav ul li a{
    /* color: #434343; */
    color: #000000;
    text-decoration: none;
    font-weight: 550;
    text-align: center;
    transition: 0.2s; 
     

}
nav ul li a:hover{
     border-bottom: 3px solid #f09819 ;

}
nav ul li a{
    /* color: white;
    background-image: var(--background-image-color) ; 
    padding:10px,30px;
    border:none;
    border-radius:10px,30px ;
    text-align: center;
    background-size: 200% auto;
    text-decoration: none;
    margin-top: 220px; */
    background-color:darkslategray;
    color: #fff;
    padding: 0.2rem 2rem;
    border: none;
    outline: none;
    border-radius: 30px;
    font-size: 1.2rem;
    font-weight: bold;
    cursor: pointer;
    transition: scale 0.2 ease;
    gap: 2rem ;
}
nav ul li a:hover{
    background-position: right center;
    color:white;
    
}

.hero{
      /* display:flex;
     height:60vh;
     align-items: center;
     background-color:#fff ;
     min-width:100%;
     padding-top:40px 0 ;   */
     width:400px;
     height:400px;
     background: #191919;
     margin: 10% auto;
      border-radius: 50% ;
      position: relative;
      /* display: flex; */
     
}
.left-box{
     /* min-width: 50%;
    text-align:center ;
    margin-top: -40px;
    z-index:1;  */
    position: absolute;
    width: inherit;
    height: auto;
    top: 42%;
      transform:translateY(-50%);
      text-align: center;
      font-family: Arial;
      color: #fff;
      font-style: italic;
      text-transform: capitalize;
    

}
 
.left-box p{
    color:aqua;
    font-size:24px;
    margin:100px auto 8px auto;
    


}
.left-box h2{
    color:#fff;
    font-size: 40px;
    font-weight: bold;
    margin: 10px auto 20px auto;  
}
.right-box{
    z-index:0;
}
.right-box img{
    margin-left:auto;
    float:right;
    
}
.about{
    margin-top: 80px;
    margin-bottom: 40px;
    display:flex;
    align-items: center;
    height:60vh ;
    background-color: #fff;
    padding-top: 40px;
    padding-bottom: 30px;
}
.left-about{
    background-color: #fff;
    margin-left: 110px;

}
 .left-about img{
    border-radius: 8px;
    height:320px;

} 
.right-about{
    background-color: #fff;
    display: inline-block;
    color:#191919;
    padding:40px;
    border-radius: 50px;
    box-shadow: 2px 2px 2px gray,2px 2px 2px gray;
     margin-left: -40px; 
    margin-right: 65px; 

} 
.right-about h3{
    margin:10px 0;
    
}
.right-about p{
    margin: 10px 100px 30px 0;
}
 .about-btn{
    margin-top:40px ;

} 
.right-box img{
    margin-left: -100px;
} 


 .left-about img{
    border-radius: 8px;
    color:#191919;
    padding:40px;
    border-radius: 10px;
    box-shadow:  2px 2px 2px gray ,2px 2px 2px gray;
    margin-left: -40px;
    margin-right: 65px;

} 
.title h2{
    font-size: 34px;
    text-align: center;
    padding:40px 0 0 0 ;

}
.menu{
    margin-left: 110px;
    margin-top: 50px;
    display: inline-grid;
    grid-template-columns: auto auto auto auto;
    /* align-items: center; */
    justify-content: center;
    text-align: center;
    /* padding: 0px 15px 40px 15px; */

}
.item{
    margin: 50px;
    padding: 20px 30px;
    transition: 0.4s ease-in ;
    box-shadow: 2px 2px 2px 2px gray,2px 2px 2px 2px gray;

}
.item img{
    height: 120px;
    width: 120px;
}
.item:hover{
    cursor:pointer;

}
.item:nth-child(1):hover{
    background-color: khaki;
}
.item:nth-child(2):hover{
    background-color: rgb(223, 140, 240);
}
.item:nth-child(3):hover{
    background-color:indianred ;
}
.item:nth-child(4):hover{
    background-color:teal;
}
.item:nth-child(5):hover{
    background-color:lightskyblue;
}
.item:nth-child(6):hover{
    background-color:fuchsia;
}
.item:nth-child(7):hover{
    background-color:crimson;
}
.item h4{
    margin-top: 7px;
}
.item p{
    margin: 7px 0px 10px 0;
    padding:5px 15px;

}
.buy-btn
{
    border-radius: 30px;
    padding:5px 15px;
    font-size:12px;
    margin-top: 60px;
}
.item-1{
    width:100px;
}
footer {
    background-color: #f8f8f8;
    padding: 40px 0;
  }
  
  footer h3 {
    color:brown;
    font-size: 18px;
    font-weight: 600;
    margin-bottom: 20px;
  }
  
  footer p {
    color:darkslategray;
    font-size: 24px;
    line-height: 1.5;
    margin-bottom: 20px;
  }
  
  footer ul {
    list-style: none;
    margin: 0;
    padding: 0;
  }
  
  footer ul li {
    margin-bottom: 10px;
    padding: 20px 30px;
  }
  
  footer ul li a {
    color: #330e8a;
    font-size: 20px;
    text-decoration:dotted;
    transition: color 0.2s ease-in-out;
  }
  
  footer ul li a:hover {
    color: #e74c3c;
  }
  
  footer .social-media {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    margin-top: 10px;
  }
  
  footer .social-media li {
    margin-right: 10px;
  }
  
  footer .social-media li:last-child {
    margin-right: 0;
  }
  
  footer .social-media li a {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 32px;
    height: 32px;
    color: #fff;
    border-radius: 50%;
    background-color: #e74c3c;
    transition: background-color 0.2s ease-in-out;
  }
  
  footer .social-media li a:hover {
    background-color: #d62c1a;
  }
  
      </style>
</html>