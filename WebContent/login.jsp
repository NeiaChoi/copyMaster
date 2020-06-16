<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <style>    
      body{
        background-color:rgba(68, 69, 57, 0.46);
      }
      #div_top {
        width: 100%;
        height: 150px;
        text-align: center;
      }
      #div_bottom {
        width: 100%;
        height: 150px;
        clear: both;
        text-align: center;
      }
      fieldset{
        background-color:white;
        border-radius:10px;
        border:5px solid rgba(7, 7, 8, 0.19);
        padding-left:10px;
        margin:0px 500px 0px 500px;
      }
      #a1{
        padding:20px 10px 0px 0px;
        vertical-align:middle;
        text-align:right;
      }
      #a2{
        color:red;
        font-size:45px;
        font-weight:bold;
        text-align:left;
        padding-left:0px;
      }
      #grid{
        display:grid;
        grid-template-columns: 370px 1fr;
      }
      #main{
        height:600px;
      }
      a{
        text-decoration:none;
      }
    </style>
  </head>
  <body>
	<div id="div_top"></div>
	<fieldset style="margin: 0px 500px 0px 500px">
		<div id="main" style="padding-left: 15px">
			</br>
			<div id="grid">
				<div id="a1">맛있는</div>
				<div id="a2">KKOGI</div>
			</div>
			</br>
			<p style="font-size: 25px; text-align: center;">로그인</p>
			</br>
			</br>
			<div style="padding-left: 250px">
				<input type="text" name="loginId" value="" placeholder="아이디를 입력하세요"
					style="font-size: 30px"> </br>
				</br> <a href="" style="color: blue">아이디를 잊으셨나요?</a>
			</div>
			</br>
			</br>
			<div style="padding-left: 250px">
				<input type="password" name="password" value=""
					placeholder="비밀번호를 입력하세요" style="font-size: 30px"> </br>
				</br> <a href="" style="color: blue">비밀번호를 잊으셨나요?
			</div>
			</br></br> 
			<a style="margin-left:330px; padding-left:55px" class="btn blue" href="#blue">로그인</a>
		</div>
	</fieldset>
	<div id="div_bottom"></div>
</body>
</html>
