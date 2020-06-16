<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>회원가입(판매점)</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <style>
      input{
        margin:5px 0px 5px 0px;
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
        font-size:40px;
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
        padding-left:5px;
      }
      label{
        font-size:20px;
      }
    </style>

    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
      }
    </script>
  </head>

  <body>
    <div id="div_root">
      <div id="div_top"></div>
      <fieldset>
        <div id="main" style="padding-left:15px">
            <div id="a1">KKOGI</div>
          <p style="font-size:20px; font-weight:bold">판매점 정보 등록</p>
          </br>
          <p style="font-size:15px; font-weight:bold">상호</p>
          <div>
            <input type="text" name="shopName" value="" placeholder="상호를 입력하세요" style="font-size:20px">
          </div>
          </br>
          <p style="font-size:15px; font-weight:bold">주소</p>
          <div>
            <input type="text" id="sample6_postcode" placeholder="우편번호" style="font-size:20px">
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"></br>
            <input type="text" id="sample6_address" placeholder="주소" style="font-size:20px"></br>
            <input type="text" id="sample6_detailAddress" placeholder="상세주소" style="font-size:20px">
            <input type="text" id="sample6_extraAddress" placeholder="참고항목" style="font-size:20px">
          </div>

          </br>
          <p style="font-size:15px; font-weight:bold">휴대전화</p>
          <div>
            <input type = "radio" name = "phone"/> SKT
            <input type = "radio" name = "phone"/> KTF
            <input type = "radio" name = "phone"/> LGU+
           <br/>
            <input type ="text" style="width:80px; height:22px"> - <input type ="text" style="width:80px; height:22px"> - <input type ="text" style="width:80px; height:22px">
          </div>
          </br>
          <p style="font-size:15px; font-weight:bold">매장전화</p>
          <input type ="text" style="width:80px; height:22px"> - <input type ="text" style="width:80px; height:22px"> - <input type ="text" style="width:80px; height:22px">
          </br></br>
          <a style="margin-left:330px; padding-left:70px" class="btn blue" href="#blue">다음</a>
        </div>
      </fieldset>
      <div id="div_bottom"></div>
    </div>
  </body>
</html>
    