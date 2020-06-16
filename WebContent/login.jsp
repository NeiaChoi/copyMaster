<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
      body{
        background-color:rgba(68, 69, 57, 0.46);
      }
      fieldset{
        background-color:white;
        border-radius:10px;
        border:5px solid rgba(7, 7, 8, 0.19);
        margin:10px;
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
      .btn{
        text-decoration:none;
        font-size:30px;
        color:white;
        padding:10px 30px 10px 30px;
        margin:20px 20px 20px 330px;
        display:inline-block;
        border-radius:10px;
        transition:all 0.1s;  /* 클릭했을 시 0.1초간 장면 전환(부드럽게 클릭됨) */
        text-shadow:0px -2px rgba(9, 9, 9, 0.85);  /* 그림자(음각 효과) */
      }
      .btn:active{
        transform:translateY(5px);  /* 클릭햇을 시 Y축으로 5픽셀 이동 */
      }
      .btn.blue{
        background-color:#1f75d9;
        border-bottom:5px solid #0e5eba;  /* 더 진한색으로 입체감 */
      }
      .btn.blue:active{
        border-bottom:2px solid #0e5eba;  /* 클릭했을 시 밑 5픽셀 테두리가 2픽셀로 줄어들면서 정말 눌린 것 같이 표현 */
      }
      a{
        text-decoration:none;
      }
    </style>
  </head>
  <body>
    <div style="height:200px"></div>
    <fieldset style="margin:0px 500px 0px 500px">
    <div id="main">
      </br>
      <div id="grid">
        <div id="a1">맛있는</div>
        <div id="a2">KKOGI</div>
      </div>
      </br>
      <p style="font-size:25px; text-align:center;">로그인</p>
      </br></br>
      <div style="padding-left:250px">
        <input type="text"name="loginId" value="" placeholder="아이디를 입력하세요" style="font-size:30px">
        </br></br>
        <a href="" style="color:blue">아이디를 잊으셨나요?</a>
      </div>
      </br></br>
      <div style="padding-left:250px">
        <input type="password"name="password" value="" placeholder="비밀번호를 입력하세요" style="font-size:30px">
        </br></br>
        <a href="" style="color:blue">비밀번호를 잊으셨나요?</p>
      </div>
      </br>
      <a style="margin-left:370px" class="btn blue" href="#blue">로그인</a>
    </div>
    </fieldset>
    <div></div>
  </body>
</html>
