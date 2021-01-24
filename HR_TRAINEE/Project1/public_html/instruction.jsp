<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <style>
   

* {
  margin: 0;
  padding: 0;
}
 
nav {
  margin: 50px;
}
 
ul {
  overflow: auto;
  list-style-type: none;
}
 
.dude {
  height: 25px;
  float: left;
  margin-right: 0px;
  border-right: 1px solid #aaa;
  padding: 0 20px;
}
 
.dude:last-child {
  border-right: none;
}
 
.dude a {
  text-decoration: none;
  color: #ccc;
  font: 25px/1 Helvetica, Verdana, sans-serif;
  text-transform: uppercase;
 
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  transition: all 0.5s ease;
}
 
.dude a:hover {
  color: #666;
}
 
.dude:hover a {
  font-weight: bold;
  color:#2385c4 ;
}
   div {
  width: 500px;
  margin: 10px
}
 
ol {
  color: #ccc;
  list-style-type: none;
}
 
ol li {
  position: relative;
  font: bold italic 28px/1.5 Helvetica, Verdana, sans-serif;
  margin-bottom:2%;
}
 
li p {
  font: 16px/1.5 Helvetica, sans-serif;
  padding-left: 60px;
  color: #555;
  width:100%; height:40%; padding-top:2%;
}
 .p {
  font: 18px/1.5 Helvetica, sans-serif;
  padding-left: 60px;
  color: #555;padding-top:2%;
 
}
span {
  position: absolute;
}
   </style>
   <script>
//     $(document).ready(function(){
//    setTimeout(function () {
//               window.location.href = "";
//
//            }, 2 * 1000); });
//$(document).ready(function () {
//    // Handler for .ready() called.
//    window.setTimeout(function () {
//    alert("timeout test");
//        location.href = "http://online.efuinsurance.com:9003/MTP-WEBAPP/firstpage.jsp";
//    },2* 1000);
//});
setTimeout("location.href = 'http://online.efuinsurance.com:9003/MTP-WEBAPP/firstpage.jsp';",10*1000);

   </script>
    </head>
    <body>
    
    <nav style="margin-left:20%; overflow-y:hidden ; height:90%;">
  <ul  style=" overflow-y:hidden ; height:90%;">
    <li class="dude"><a href="http://efuinsurance.com/">Home</a></li>
    <li class="dude"><a href="http://efuinsurance.com/Governance.php">About</a></li>
    <li class="dude"><a href="http://efuinsurance.com/productsServices.php">Products and Services</a></li>
    <li class="dude"><a href="http://efuinsurance.com/contact.php">Contact</a></li>
    
  </ul>
</nav>
<p class="p"> Instructions</p>
<div>

  <ol>
    <li><span>1.</span><p> Best Viewed in Chrome, Firefox, Mozilla Internet Explorer 10 and above.  </p></li>
    <!--<li><span>2.</span><p> For any queries kindly contact shabib.rizvi@efuinsurance.com or Shaheena.ashfaq@efuinsurance.com. </p></li>-->
     <li><span>2.</span><p>For any further query please contact to HRD at: Phones: 32313471-90 Ext. 473, 593 & 154. </p></li>
    <li> </li>
  </ol> 
</div>   

<div style="margin-top:5%;margin-left:5%;"><p>The Application Page will automatically load in 10 seconds</p>
<a href="http://online.efuinsurance.com:9003/MTP-WEBAPP/firstpage.jsp"> Click to proceed onto Management Trainee Program Application page.</a>     </div>
    </body>
</html>