<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style>
   *{
      margin:0px;
      padding:0px;
   }
   header, footer{
      background-color:red;
      width:100%;
      height:200px;
      margin:auto;
   }
   div.content>section.section3{
   	border: 1px soild red;
      padding:15px;      
   }
   div.content>section.section3>div{
      border:1px solid black;
      width:700px;
      height:400px;
      margin:auto;
      padding:30px;
      position: relative;
    }
   div.content>section.section3>div>div:first-child{
      font-size:18px;
      font-weight:bold;
      float:left;
      padding:5px;      
   }
   div.content>section.section3>div>div:nth-child(2),
   div.content>section.section3>div>div:last-child{
      display:inline-block;
      float:left;
      padding:5px;
   }
   div.content>section.section3>div>div>span{
      display:inline-block;
      width:1px; height:180px;
      background-color:lightgray;
   }
   div.content>section.section3>div>div>div.text1{
      border:3px solid red;
      position: absolute;
      left:50px; width: 300px; bottom:220px; 
      color:white;
      display:inline-block;
   }
   div.content>section.section3>div>div>div.text1>p.title{
      font-size: 15px;
      font-weight:600;
   }
   div.content>section.section3>div>div>div.text1>p.content{
      font-size: 12px;
      font-weight:300;
   }
   
</style>
</head>
<body>
   <header></header>
   
   <div class="content">
      <section class="section3">
         <div>
            <div>기획전</div>
            <div><a href="#">
            <img src="http://localhost:9000/Music/images/"></a>
            <div class="text1"><p class="title">리뷰가 많은 숙소</p><p class="content">많은 리뷰로 실패없는 여행!!</p></div><span></span>
            
            <a href="#"><img src="http://localhost:9000/Music/images/header.pn"></a>
            <div class="text2"><p class="title">여행지 맛집 추천</p><p class="content">역시 여행은 먹방!!</p></div></div>
            
            <div><a href="#"><img src="http://localhost:9000/Music/images/magazine1.pn"></a>
            <span></span>
            <a href="#"><img src="http://localhost:9000/Music/images/magazine1.pn"></a></div>         
         </div>
      </section>
   </div>
   <footer></footer>
   
</body>
</html>