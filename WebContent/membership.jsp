<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <style>
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
      body{
        background-color:rgba(68, 69, 57, 0.46);
      }
      fieldset{
        background-color:white;
        border-radius:10px;
        border:5px solid rgba(7, 7, 8, 0.19);
        padding-left:10px;
        margin:0px 500px 0px 500px;
      }
      #a1{
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
      label{
        font-size:20px;
      }
    </style>
  </head>
  <body>
    <div id="div_root">
      <div id="div_top"></div>
      <fieldset>
        <div id="main" style="padding-left:15px">
          </br>
            <div id="a1">KKOGI</div>
          <p style="font-size:25px; font-weight:bold">KKOGI 계정 만들기</p>
          </br></br>
          <div>
            <label for="b1"><input type="radio" id="b1" name="membership" checked>개인회원</label>
            <label for="b2"><input type="radio" id="b2" name="membership">판매점 회원</label>
          </div>
          </br></br>
          <div>
            <input type="text" name="loginId" value="" placeholder="아이디를 입력하세요" style="font-size:30px">
          </div>
          </br></br></br>
          <div>
            <input type="password" name="password" value="" placeholder="비밀번호를 입력하세요" style="font-size:30px">
            </br>
            <a href="" style="color:gray">숫자, 영문, 특수 문자 포함 8자 이상</p>
          </div>
        </br></br>
          <a style="margin-left:330px; padding-left:70px" class="btn blue" href="#blue">다음</a>
        </div>
      </fieldset>
      <div id="div_bottom"></div>
    </div>
  </body>
</html>
    