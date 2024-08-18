<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
    <head>
        <title>menu page</title>
        <link rel="stylesheet" href="menu.css">
        <script>
          function addCart(n){
            var name=document.getElementById("name"+n).innerHTML;
            var price=document.getElementById("price"+n).innerHTML;
            window.location.href="http://localhost:8081/icecream/cart.jsp?name="+name+"&price="+price;
            
            

          }

                
          
        </script>
        
    </head>

    <body style="background-color:F2F2F2">
    
    
    <main>
    
 
    <h1>Shark Icecreams Menu</h1><br>
    <div class=" box">
        <input   type="text" placeholder="Search...">
        <a class="search-btn" href="#">
        <!-- <i class="fas fa-search"></i> -->
        <img src="https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/search-512.png" width="50px">
        </a>
    </div>
    <br><br>
  <a href="addtocart.jsp" class="btn">Go to cart<a></a>

    <style>
      .btn{
        background-color: #f9a603;
        color: black;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer
      }
      .btn:hover{
         background-color: #f9a603;
      }
    </style>
    
      <h2>Gelato</h2>
      <section>
        
        <div class="product">
        <img src="https://www.gelatoadomicilioroma.com/wp-content/uploads/2020/04/Gelato-panna-cotta-a-domicilio-Roma2.jpg" alt="Panna Cotta Gelato">
        <h3 id="name1">Panna Cotta</h3>
        <span id="price1">150</span>/-<br>
        <button class="btn" onclick="addCart(1)">Add to cart</button>
      </div>
        <div class="product">
        <img src="https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/10B8AD7E-80B1-4B32-8CEB-00455A3CEF54/Derivates/53e689ff-a210-4a59-bb88-8f55cdf4797b.jpg" alt="Dulce De Leche Gelato">
        <h3 id="name2">Dulce De Leche</h3>
        <span id="price2">130</span>/-<br>
        <button onclick="addCart(2)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://www.camillabakery.it/wp-content/uploads/2021/04/ED2FF806-85D3-40F7-B3E0-36C55243A323.jpg" alt="Tiramisu gelato">
        <h3 id="name3">Tiramisu</h3>
        <span id="price3">300</span>/-<br>
        <button  onclick="addCart(3)"  class="btn">Add to cart</button>
      </div>
        <div class="product">
        <img src="https://th.bing.com/th/id/R.d4e65caa86b8180e742af19d0c3a840d?rik=wYiEPLFwxgYvgQ&riu=http%3a%2f%2ffarm8.staticflickr.com%2f7137%2f7470589142_4fb5d54a63_o.jpg&ehk=5IccqiB72ZpUEcIZvyM6qV5946Xwh6xh%2bIhWoWORi6Q%3d&risl=&pid=ImgRaw&r=0" alt="Coffee Gelato">
        <h3 id="name4">Coffee</h3>
        <span id="price4">400</span>/-<br>
        <button  onclick="addCart(4)"  class="btn">Add to cart</button>
      </div>
        <div class="product">
        <img src="https://twobittart.files.wordpress.com/2017/06/dinner-mint-gelato.jpg?w=1100&h=1100" alt="Mint gelato">
        <h3 id="name5">Mint</h3>
        <span id="price5">500</span>/-<br>
        <button  onclick="addCart(5)"  class="btn">Add to cart</button>
      </div>
        <div class="product">
        <img src="https://blog.giallozafferano.it/mastercheffa/wp-content/uploads/2020/05/biscotti-gelato-fatti-in-casa-2-768x576.jpg" alt="Biscotti gelato">
        <h3 id="name6">Biscotti</h3>
        <span id="price6">200</span>/-<br>
        <button  onclick="addCart(6)"  class="btn">Add to cart</button>
      </div>
    </section>
  </div>


<div>
    <h2>Sorbet</h2>
    <section>
      <div class="product">
        <img src="https://lh3.googleusercontent.com/v-23hPiQYTf_Vj_NxUpW_SG5Zy0MD8b8fYrKdwGteQ4vP3wtISl9hfNi33yt6mzxqFZXhCfF-JJuW3Oq16pY0xI=w220-h220-c-rw-" alt="Blue Raspberry Twist Sorbet">
        <h3 id="name7">Blue Raspberry Twist</h3>
        <span id="price7">100</span>/-<br>
        <button  onclick="addCart(7)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://i.pinimg.com/originals/69/38/99/693899444731a3277e77de36a3144d32.jpg" alt="Mango Sorbet">
        <h3 id="name8">Mango Sorbet</h3>
        <span id="price8">249</span>/-<br>
        <button  onclick="addCart(8)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://lh3.googleusercontent.com/v-23hPiQYTf_Vj_NxUpW_SG5Zy0MD8b8fYrKdwGteQ4vP3wtISl9hfNi33yt6mzxqFZXhCfF-JJuW3Oq16pY0xI=w220-h220-c-rw-v1-e365" alt="Healthy No-Churn Fruit Sorbet">
        <h3 id="name9">Healthy No-Churn Fruit</h3>
        <span id="price9">599</span>/-<br>
        <button  onclick="addCart(9)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://lh3.googleusercontent.com/LciKo-cHeeO0BBFXNFDZk7xGBqN49E5qUtsYJwjk_nmo5oD5P_-cMhSWAhw9J08V-GJrWByXwk2tY9NliOC4bQ=w220-h220-c-rw-v1-e365" alt="Sweet Cherry Sorbet">
        <h3 id="name10">Sweet Cherry Sorbet</h3>
        <span id="price10">344</span>/-<br>
        <button  onclick="addCart(10)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://lh3.googleusercontent.com/P7Ylg5fduKneZ4sCtfNM3CMTlqXAQmFti4CQxXG00MGDv8fTqkqJVOR2-PWQ9f5QX5yYFzzh8PGRbMl1_HJLlfsdtCkoVoTO180=w220-h220-c-rw-v1-e365" alt="Sparkling Strawberry Sorbet">
        <h3 id="name11">Sparkling Strawberry Sorbet</h3>
        <span id="price11">366</span>/-<br>
        <button  onclick="addCart(11)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://lh4.ggpht.com/jbKfXAZsremW-gJE96d5MDoO4ZSxQ0iBvM9JjayM3gjVK2ZgBGqC4Ki5O_TLps3VQjP2e606e29TqA9NYwvn=w220-h220-c-rw-v1-e365" alt="Very Fresh Lemon/ Basil Sorbet">
        <h3 id="name12">Very Fresh Lemon/ Basil Sorbet</h3>
        <span id="price12">122</span>/-<br>
        <button  onclick="addCart(12)"  class="btn">Add to cart</button>
      </div>
    </section>
  </div>

  <div>
    <h2>Sherbet</h2>
    <section>
      <div class="product">
        <img src="https://www.braums.com/wp-content/uploads/2018/05/RainbowSherbet.jpg" alt="Rainbow Sherbet">
        <h3 id="name13">Rainbow Sherbet</h3>
        <span id="price13">233</span>/-<br>
        <button  onclick="addCart(13)"  class="btn buy-btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://i.pinimg.com/originals/80/da/09/80da09b42c16c6a82b0fb47065aaa1bb.jpg" alt="Rockin' Sherbet">
        <h3 id="name14">Rockin' Sherbet</h3>
        <span id="price14">2334</span>/-<br>
        <button  onclick="addCart(14)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://th.bing.com/th/id/R.9b957dc4bbf501d96508cd86a3e31eea?rik=cwFHeRpkkdRijg&riu=http%3a%2f%2fjohnsonsrealicecream.com%2fwp-content%2fuploads%2f2017%2f03%2fOrange-Sherbet.jpg&ehk=TkeLN5vb8EBpxQdbCiE%2fRXB0Mg0JT%2bNZErp84u%2f64UQ%3d&risl=&pid=ImgRaw&r=0" alt="Orange Sherbet">
        <h3 id="name15">Orange Sherbet</h3>
        <span id="price15">234</span>/-<br>
        <button  onclick="addCart(15)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://i2.wp.com/www.imbored-letsgo.com/wp-content/uploads/2015/07/Raspberry-Sherbet1.jpg" alt="Raspberry Sherbet">
        <h3 id="name16">Raspberry Sherbet</h3>
        <span id="price16">56</span>/-<br>
        <button  onclick="addCart(16)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://th.bing.com/th/id/OIP.qZOjXVM36MoGhCIDdTHCsAHaHK?pid=ImgDet&rs=1" alt="Wildberry Sherbet">
        <h3 id="name17">Wildberry Sherbet</h3>
        <span id="price17">123</span>/-<br>
        <button  onclick="addCart(17)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://i.pinimg.com/originals/7b/06/8c/7b068c02b237d910bccfd6475c1a72a4.jpg" alt="Lemon Sherbet">
        <h3 id="name18">Lemon Sherbet</h3>
        <span id="price18">467</span>/-<br>
        <button  onclick="addCart(18)"  class="btn">Add to cart</button>
      </div>
    </section>
  </div>

<div>
    <h2>Frozen Yogurt</h2>
    <section>
      <div class="product">
        <img src="https://i1.wp.com/elizabethshome.com/wp-content/uploads/2014/08/2014-07-03-Fro-Yo-336.jpg?fit=1024%2C813" alt="Chocolate Fudge Frozen Yogurt">
        <h3 id="name19">Chocolate Fudge</h3>
        <span id="price19">234</span>/-<br>
        <button  onclick="addCart(19)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://media.30seconds.com/tip/lg/Homemade-Frozen-Vanilla-Yogurt-15613-037182b274-1517552489.jpg" alt="Vanilla Frozen Yogurt">
        <h3 id="name20">Vanilla</h3>
        <span id="price20">235</span>/-<br>
        <button  onclick="addCart(20)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://i.pinimg.com/736x/5e/7a/26/5e7a26b7842aa169221885b10ea067f6.jpg" alt="Peach Frozen Yogurt">
        <h3 id="name21">Peach Frozen Yogurt</h3>
        <span id="price21">786</span>/-<br>
        <button  onclick="addCart(21)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://hips.hearstapps.com/clv.h-cdn.co/assets/cm/15/09/54eb8a204e477_-_clv-ice-cream-cups-4-lgn-12423624.jpg?crop=0.75xw:1xh;center,top&resize=980:*" alt="Raspberry Linzer Cookie Frozen Yogurt">
        <h3 id="name22">Raspberry Linzer Cookie</h3>
        <span id="price22">356</span>/-<br>
        <button  onclick="addCart(22)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://images.squarespace-cdn.com/content/v1/5418a5bae4b0877352524377/1452486644361-ZO4NMYSKBGRJHPALQ1OW/image-asset.jpeg" alt="Blueberry Basil Frozen Yogurt">
        <h3 id="name23">Blueberry Basil Frozen Yogurt</h3>
        <span id="price23">654</span>/-<br>
        <button  onclick="addCart(23)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://hips.hearstapps.com/clv.h-cdn.co/assets/cm/15/09/54eb8a1e75e3c_-_clv-ice-cream-cups-1-lgn-59593495.jpg?crop=0.752xw:1.00xh;0.155xw,0&resize=980:*" alt="Mango Lassi Swirl Frozen Yogurt">
        <h3 id="name24">Mango Lassi Swirl Frozen Yogurt</h3>
        <span id="price24">345</span>/-<br>
        <button  onclick="addCart(24)"  class="btn">Add to cart</button>
      </div>
    </section>
  </div>
  <div>
    <h2>Soft Serve</h2>
    <section>
      <div class="product">
        <img src="https://dealseekingmom.com/files/2017/07/Ice-Cream-FREE-at-McDonalds.png" alt="Vanilla Soft Serve">
        <h3 id="name25">Vanilla</h3>
        <span id="price25">200</span>/-<br>
        <button  onclick="addCart(25)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://www.nicepng.com/png/detail/422-4225549_chocolate-soft-serve-soft-chocolate-ice-cream.png" alt="Chocolate Soft Serve">
        <h3 id="name26">Chocolate</h3>
        <span id="price26">199</span>/-<br>
        
        <button  onclick="addCart(26)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://cdn.shopify.com/s/files/1/3105/5038/products/Pistachio-Soft-Serve-Ice-Cream-Mix_1200x1200.jpg?v=1609915375" alt="Pistchino Soft Serve">
        <h3 id="name27">Pistchino</h3>
        <span id="price27">138</span>/-<br>
        <button  onclick="addCart(27)"  class="btn">Add to cart</button>
        
      </div>
      <div class="product">
        <img src="https://th.bing.com/th/id/OIP.33a1cSrabO8SDP96EjPxLwHaH2?pid=ImgDet&rs=1" alt="Butter Pecan Soft Serve">
        <h3 id="name28">Butter Pecan</h3>
        <span id="price28">234</span>/-<br>
        <button  onclick="addCart(28)"  class="btn">Add to cart</button>
        
      </div>
      <div class="product">
        <img src="https://th.bing.com/th/id/OIP.Dxmu3EKIkHwmAjxq3WqFugHaG4?pid=ImgDet&rs=1" alt="Banana with added choco chips Soft Serve">
        <h3 id="name29">Banana with added choco chips</h3>
        <span id="price29">345</span>/-<br>
        <button  onclick="addCart(29)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://www.smartcandy.co.za/wp-content/uploads/2019/11/Soft-Serve-Mix-Strawberry-700px-TINY.png" alt="Strawberry Soft Serve">
        <h3 id="name30">Delicious Strawberry Soft Serve</h3>
        <span id="price30">122</span>/-<br>
        <button  onclick="addCart(30)"  class="btn">Add to cart</button>
      </div>
    </section>
  </div>


<div>
    <h2>Vegan Ice Cream</h2>
    <section>
      <div class="product">
        <img src="https://i.pinimg.com/originals/3b/77/e9/3b77e988a2ad389d3c13ae29a32bf4c4.png" alt="Chocolate Chip Cookie Dough Vegan Ice Cream">
        <h3 id="name31">Chocolate Chip Cookie Dough</h3>
        <span id="price31">245</span>/-<br>
        <button  onclick="addCart(31)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://2.bp.blogspot.com/-Wjhp5KcIrVo/WT8282_s7tI/AAAAAAAABnY/H2JxhGAY1EgK4D89VDGIVd3kAr3QbAu9QCLcB/s1600/C166B1DC-43C5-493E-82D6-97020918C214.JPG" alt="Chocolate Extreme Vegan Ice Cream">
        <h3 id="name32">Chocolate Extreme Vegan Ice cream</h3>
        <span id="price32">56</span>/-<br>
        <button  onclick="addCart(32)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://www.yourhomebasedmom.com/wp-content/uploads/2016/06/Brown-Sugar-Vanilla-Bean-Ice-Cream_0005.jpg" alt="Vanilla Bean Ice Cream">
        <h3 id="name33">Vanilla Bean</h3>
        <span id="price33">678</span>/-<br>
        <button  onclick="addCart(33)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://s3.amazonaws.com/yummy_uploads2/blog/8992.jpg" alt="Mango Ice Cream">
        <h3 id="name34">Mango</h3>
        <span id="price34">756</span>/-<br>
        <button  onclick="addCart(34)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://th.bing.com/th/id/OIP.fpavHGrf65CWdvaeK2ZbXgHaFj?pid=ImgDet&rs=1" alt="Strawberry Ice cream">
        <h3 id="name35">Strawberry</h3>
        <span id="price35">233</span>/-<br>
        <button  onclick="addCart(35)"  class="btn">Add to cart</button>
      </div>
      <div class="product">
        <img src="https://wallflowerkitchen.com/wp-content/uploads/2013/06/almondicecream-720x720.jpg" alt="Caramel Almond Ice Cream">
        <h3 id="name36">Caramel Almond</h3>
        <span id="price36">122</span>/-<br>
        <button  onclick="addCart(36)"  class="btn">Add to cart</button>
      </div>
    </section>
  </div>

</main>
</body>
</html>

    </body>
</html> 