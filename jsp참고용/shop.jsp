<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <!-- <link rel="stylesheet" href="css/shop.css" />  -->
  <link rel="stylesheet" href="css/fontello-47e7b9ac/css/fontello.css">
  <link href="https://fonts.googleapis.com/css?family=Anton|Lobster" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!--  <script src="js/shop.js"></script> -->
   <title>DokY Shop</title>
</head>

<script>
﻿$(document).ready(function(){
	  $("#root").hover(function(){
	   $(".donot").css("opacity", "100");
	    $(".donot li").css("visibility", "visible");
	  }, function(){
	   $(".donot").css("opacity", "0");
	    $(".donot li").css("visibility", "hidden");
	  });
	});

	$(document).ready(function(){
	  $("#root2").hover(function(){
	    $(".donot2").css("opacity", "100");
	    $(".donot2 li").css("visibility", "visible");

	  }, function(){
	    $(".donot2").css("opacity", "0");
	    $(".donot2 li").css("visibility", "hidden");
	  });
	});

	$(document).ready(function(){
	  $("#root3").hover(function(){
	    $(".donot3").css("opacity", "100");
	    $(".donot3 li").css("visibility", "visible");

	  }, function(){
	    $(".donot3").css("opacity", "0");
	    $(".donot3 li").css("visibility", "hidden");
	  });
	});

	$(document).ready(function(){
	  $("#root4").hover(function(){
	    $(".donot4").css("opacity", "100");
	    $(".donot4 li").css("visibility", "visible");
	  }, function(){
	    $(".donot4").css("opacity", "0");
	    $(".donot4 li").css("visibility", "hidden");
	  });
	});


	function counter(){
			var saledday = new Date("july 28,2019,09:00:00").getTime();
			setInterval(function(){
				var now = new Date();
				var period = saledday - now;
				var d = Math.floor(period / (1000 * 60 * 60 * 24));
				var h = Math.floor((period % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				var m = Math.floor((period % (1000 * 60 * 60)) / (1000 * 60));
				var s = Math.floor((period % (1000 * 60)) / 1000);
				if(s < 10){  //10초이하일때 01, 02, 03 .... 앞에 0 추가
					s = '0'+s;
				}
				$('.content').html(d)
				$('.content2').html(h)
				$('.content3').html(m)
				$('.content4').html(s)

			}, 1000); 
		}
		counter();

	  function toggleA(){
	    document.getElementById('pic1').src = "images/v23.jpg";
	    document.getElementById('pic2').src = "images/v5.jpg";
	    document.getElementById('pic3').src = "images/v9.jpg";
	    document.getElementById('pic4').src = "images/v20.jpg";
	    document.getElementById('label1').style.background = "gray";
	    document.getElementById('label2').style.background = "#fff";
	  }
	  function toggleB(){
	    document.getElementById('pic1').src = "images/vv1.jpg"
	    document.getElementById('pic2').src = "images/vv2.jpg"
	    document.getElementById('pic3').src = "images/vv3.jpg"
	    document.getElementById('pic4').src = "images/vv4.jpg"
	    document.getElementById('label1').style.background = "#fff";
	    document.getElementById('label2').style.background = "gray";
	  }

</script>

<style>
/* header ~ footer 까지 전체적으로 적용되는 css*/
body {
  display: inline-block;
  background-image: none;
  background-size:cover;
}
/*로고와 카테고리를 감싸고 있는 상단부 css */
header {
  background-color: #ebe1e2;
  display: -webkit-inline-box;
  padding-left: 5px;
  font-family: fantasy, sans-serif;
  font-size: 1.5em;
  height: 130px;
  width:1245px;
}

header li {
  margin-right: 80px;
}

header .index{
  list-style: none;
  display: inline-flex;
  padding-left: 0px;
  margin-top: 5px;

}
/* Shirts, Jeans box opacity & side*/
.donot, .donot2, .donot3, .donot4{
  opacity: 0;
  color: #24151abd;
  margin-right: 30px;

}
/* Shirts, Jeans text*/
.donot li, .donot li, .donot2 li, .donot3 li, .donot4 li{
  list-style: none;
  display: inline-flex;
  background-color: none;
  position: absolute;
  z-index: 200;
  margin-left: -50px;
}
/* Shirts, Jeans box*/
header .line {
  margin-right:10px;
  margin-top: 20px;
}

/* Shirts, Jeans text*/
header .line a {
  color: #555252;
  text-decoration: none;
}

/* MEN MD.... */
#root:hover, #root2:hover, #root3:hover, #root4:hover {
  color: red;
}
/* MEN MD.... */
#root, #root2, #root3, #root4 {
  padding-left: 15px;
  margin-top: 25px;
}

h1{
  text-align: center;
  text-decoration-line: underline;
  text-underline-position: below;
  font-family: verdana , sans-serif;
  font-size: 1.8em;
  font-weight: 15em;
}

/* icon start */
#root5{
  margin-left: 110px;
  
}
/* icon text */
.icon .label {
  display: none;
 
}

</style>

<body>
<%
String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String)session.getAttribute("userID");
}
%>

  <!-- 카테고리 인라인, 각각 세부 사항은 hidden, js를 이용하여 visibility 값, opacity 바꿈-->
  <header style="border:2px solid #decccc;">
    <ul class="index">
      <span style="margin-right: 30px;"><img src="images/BTSshop.jpg" style="width:210px; margin-right: 50px;"></span>

      <li id="root">

        <label for="root">MEN</label>
        <div class="donot">
          <ul>
            <li style="visibility: hidden">
              <div class="line"><a href="shop2.html">Jackets</a></div>
              <div class="line"><a href="shop2.html">Coats</a></div>
              <div class="line"><a href="shop2.html">Shirts</a></div>
              <div class="line"><a href="shop2.html">Jeans</a></div>
            </li>
          </ul>
        </div>
      </li>
      <li id="root2">
        <label for="root2">UNISEX</label>
        <div class="donot2">
          <ul>
            <li style="visibility: hidden">
              <div class="line"><a href="shop2.html">Jackets</a></div>
              <div class="line"><a href="shop2.html">T-Shirts</a></div>
              <div class="line"><a href="shop2.html">Hoodies</a></div>
              <div class="line"><a href="shop2.html">Jeans</a></div>
            </li>
          </ul>
        </div>
      </li>

      <li id="root3" >
        <label for="root3">ACC</label>
        <div class="donot3">
          <ul>
            <li style="visibility: hidden">
              <div class="line"><a href="shop2.html">Sneakers</a></div>
              <div class="line"><a href="shop2.html">Flats Shoes</a></div>
              <div class="line"><a href="shop2.html">Hats</a></div>
              <div class="line"><a href="shop2.html">Wallet</a></div>
            </li>
          </ul>
        </div>
      </li>
      <li id="root4">

        <label for="root4">MD</label>
        <div class="donot4">
          <ul>
            <li style="visibility: hidden">
              <div class="line"><a href="shop2.html">2019 Special</a></div>
              <div class="line"><a href="shop2.html">2020 Special</a></div>
            </li>
          </ul>
        </div>
      </li>
      
<%
if(userID == null) {
%>      
      <li class="icon" id="root5">
        <p/>
        <div class="line"><a href="sign.jsp" class="icon-user-plus"><span class="label">google</span></a></div>
      </li>
<%
} else {
%>
<li class="icon" id="root5">
        <p/>
        <div class="line"><a href="logoutAction.jsp" class="icon-user-times"><span class="label">google</span></a></div>
      </li>
<%
}
%>
      <li class="icon">
        <p/>
        <div class="line"><a href="#" class="icon-chat"><span class="label">chat</span></a></div>
      </li>

      <li class="icon">
        <p/>
        <div class="line"><a href="#" class="icon-basket"><span class="label">basket</span></a></div>
      </li>

    </ul>
  </header>

<!-- 세일 품목 표시, D-day를 스크립트로 설정하여 남은기간을 알려줌. -->
  <section class="promo-banner" style="text-align: center; font-size: 21px; width:1250px;; height:50px; background-color: Black;
  line-height: 1.5em; border:2px solid #decccc;">
  <article style="transform: translateY(25%); ">
    <span style="color:#c5c2c2; " >Days : </span><span class="content" style="font-weight: 600;
    color:white; padding-left:5px; padding-right: 3px;"></span>
    <span style="color:#c5c2c2; " >Hours : </span><span class="content2" style="font-weight: 600;
    color:white; padding-left:5px; padding-right: 3px;"></span>
    <span style="color:#c5c2c2; " >Minutes : </span><span class="content3" style="font-weight: 600;
    color:white; padding-left:5px; padding-right: 3px;"></span>
    <span style="color:#c5c2c2; " >Seconds : </span><span class="content4" style="font-weight: 600;
    color:white; padding-left:5px; padding-right: 3px;"></span>
    <span style="color:white; padding-left:30px; white-space: nowrap;">30% Discount on MD GOODS</span>
  </article>
</section>


<!--main은 시멘틱 요소 section 태그를 이용하여 묶고, 각각 click(span)을 이용하여 상품페이지로 넘어가게 설정, 이동 transform이용 -->
<section id="main" style="margin-top: 5px; background-color:#f5e4e4;
border:1px solid #decccc;width: fit-content;">
<div style="width:1250px; height:400px; margin-bottom:0px; border:2px solid #decccc;">
  <img src="images/Vmain1.jpg" style="width:1250px; height:400px;">
  
  <a href="shop2.html"><span  style="
  margin-left: 50px;
  font-family: verdana, sans-serif;
  transform: translateY(-150%);
  border-color: #4d4242;
  border-style: solid;
  border-width: 2px;
  position: absolute;
  height: 40px;
  padding-top: 5px;
  padding-bottom: 0px;
  padding-left: 15px;
  padding-right: 15px;
  font-size: 1.5em;
  color:#b9d6d9f0;
  cursor: pointer;
  ">Custom-Made</span></a></div>

  <table style="width:1250px;height:610px; border:1px solid #decccc;">
    <tr>
      <td rowspan="3"><img src="images/v3.jpg" style="width:770px; height:600px;"></td>
      <a href="shop2.html">
        <span style="color: white;
        margin-left: 330px;
        font-family: verdana, sans-serif;
        transform: translateX(-218%) translateY(50%);
        border-color: #4d4242;
        border-style: solid;
        border-width: 2px;
        position: absolute;
        height: 40px;
        padding-top: 5px;
        padding-bottom: 0px;
        padding-left: 15px;
        padding-right: 15px;
        font-size: 1.5em;
        color:#b1cccc;
        cursor: pointer;
        ">UNISEX</span></a>
      </tr>

      <tr>
        <td><img src="images/v6.jpg" style="width:475px; height:297px;"></td>

      </tr>
      <tr>
        <td><img src="images/v4.jpg" style="width:475px; height:297px;"></td>
      </tr>
    </table>
  </div>

  <table style="width:1250px;height:410px; border:1px solid #decccc;">
    <tr>
      <td style="width:385px; height:300px; ">
        <img src="images/v13.jpg" style="width:475px; height:400px">
      </td>
      <td style="width:385px; height:300px; background-color:#ebe1e2;">
        <h1 style="transform:translateX(11%) translateY(400%); position:absolute;">Clearance Sale</h1></td>
        <td><img src="images/v7.jpg" style="width:475px; height:400px"></td>
        <a href="shop2.html"><span   style="
        margin-left: 1100px;
        font-family: verdana, sans-serif;
        transform: translateX(-360%) translateY(15%);
        border-color: #4d4242;
        border-style: solid;
        border-width: 2px;
        position: absolute;
        height: 40px;
        padding-top: 5px;
        padding-bottom: 0px;
        padding-left: 15px;
        padding-right: 15px;
        font-size: 1.5em;
        color:#FF5722;
        cursor: pointer;
        display: inline-table;
        ">Shop ACC</span></a>
      </tr>
    </table>
  </div>
</section>
<!-- section(main) 이 끝나는 부분 section에 대한 설명은 Section 선언부에...-->
<p/>




<!-- 웹페이지 하단 footer에 대한 stylesheet -->
<style>
#footer2{
  background-color: #f5e4e4;
  font-family: 'verdana', sans-serif;
  font-size: 1.2em;
  font-weight: 15em;
  /* border: 3px solid #6969691f; */
  width:1230px;
  border:2px solid #decccc;
}
#footer2 h2{
  font-family: 'verdana', sans-serif;
  text-decoration: none;
  color: black;
  font-weight: 18em;
  font-size: 18px;
  margin-bottom: 10px;
  /* border: 3px solid #6969691f; */
}
#footer2 h6{
  font-family: 'verdana', sans-serif;
  text-decoration: none;
  color: black;
  font-weight: lighter;
  font-size: 12px;

  /* border: 3px solid #6969691f; */
}
#footer3 a {
  text-decoration:none;
  color:black;
}
</style>



<!-- 웹페이지 하단, js를 이용하여 label 클릭시 기존 4개의 상품 이미지가 -> 다른 이미지 4개를 포함한 이미지로 이동 변환     -->
<footer style="margin-top:15px;" >
  <style>
  *{margin:0;padding:0;}
  ul,li{list-style:none;}
  #slide{height:300px;position:relative;overflow:hidden;width: 1250px;background: black;}
  #slide ul{width:410%;height:100%;transition:1s;}
  #slide ul:after{content:"";display:block;clear:both;}
  #slide li{float:left;width:25%;height:100%;}
  #slide input{display:none;}
  #slide label{display:inline-block;vertical-align:middle;width:10px;height:10px;
    border:2px solid #666;transition:0.3s;border-radius:50%;cursor:pointer;}
    #slide .pos{text-align:center;position:absolute;bottom:2px;left:0;width:100%;text-align:center;}
    #slide img:hover{
      transform: scale(1.05);
      border: 2px outset darkgreen;
    }
  </style>

  <div id="slide"  style=" width:1250px; height:300px; border:2px solid #decccc; ">
    <input type="radio" name="pos" id="pos1" onclick= 'toggleA()'>
    <input type="radio" name="pos" id="pos2" onclick= 'toggleB()'>
    <ul>
      <a href="shop2.html"><li style="padding-top:10px;">
        <img src="images/v23.jpg"  style="width:296px; height:270px;" id="pic1" >&emsp;
        <img src="images/v5.jpg"  style="width:296px; height:270px;" id="pic2" >&emsp;
        <img src="images/v9.jpg"  style="width:296px; height:270px;" id="pic3" >&emsp;
        <img src="images/v20.jpg"  style="width:297px; height:270px;" id="pic4" >
      </li></a>
    </ul>

    <p class="pos">
      <label for="pos1" id="label1" style="background:gray"></label>
      <label for="pos2" id="label2" style="background:#fff"></label>
    </p>
  </div>
  <p/>



<!--쇼핑몰 Q&A, 위치, 상세 내용이 담겨 있음, Home(login), prev(Login), next(상품 페이지)로 이동 가능. -->
<div id="footer2" style="margin-top:15px; padding:50px 5px 5px 15px;">
  <table>
    <tr>
      <td>
        <h2>고객센터</h2>
        1599-3333<br>
        <h6 style="font-weight:0;">
          평일09:00 ~ 18:00 ( 점심시간 12:00 ~ 13:00 )
        </h6>
        <br>
      </td>

      <td style="padding-left:100px;">
        <h2>은행정보</h2>
        <h6>
          예금주:김도규<br>
          신한 : 11047212009<br>
          우리 : 1105221997112<br>
          농협 : 3010324998712<br>
        </h6>
      </td>

      <td style="padding-left:100px;">
        <h2>반품주소</h2>
        <h6>
          CJ대한통운(1588-1255)<br>
          CJ대한통운반품주소:우편번호0334422<br>
          강원도 춘천시 중앙로 2길 112-11<br>
          ※타택배 이용 자제(반송될수 있습니다.)<br>
        </h6>
      </td>
      <td style="padding-left:100px;">
        <div id="map" style="width:350px;height:200px; border:2px solid gray;"></div>
      	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ae942b9ca5e3fd7e249282cb403adad9"></script>
      	<script>
      		var container = document.getElementById('map');
      		var options = {
      			center: new daum.maps.LatLng(37.886641, 127.724621),
      			level: 3
      		};

      		var map = new daum.maps.Map(container, options);

          var markerPosition = new daum.maps.LatLng(37.886641, 127.724621);

          var marker = new daum.maps.Marker({
            position : markerPosition
          });

          marker.setMap(map);
      	</script>
      </td>
    </tr>
  </table>

  <h6 style="text-align:center; margin-top:50px; margin-bottom:30px;">회사명 : ( 주 )도규컴퍼니 / 대표이사:김도규 /
    사업장주소:강원도 춘천시 소양로 2가 107-21 / 사업자등록번호:221:88:00125
    / 개인정보보호책임자:김도규 ( rnrdkxoa1@naver.com )</h6>

    <div id="footer3"style="text-align:center; text-decoration:none; color:black;">
      <p/>&copy; <a href="login.jsp">Home</a>
      <p/>
      <a href="login.jsp" style = "margin-left: 10px;">Prev</a>
      <a href="shop2.jsp">Next</a>
    </div>
  </div>
</footer>

</body>
</html>
