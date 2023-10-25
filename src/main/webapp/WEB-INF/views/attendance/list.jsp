<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Insert title here</title>
  <style>
    #mainContents > h1 {
      margin-top: 2.5em;
      text-align: center;
    }
    #req_btn {
      text-align: right;
      margin: 30px;
    }
    #req_list {
      background-color: rgb(176, 191, 253);
    }
  </style>

  <c:import url="/WEB-INF/views/layout/css.jsp"></c:import>
  <c:import url="/WEB-INF/views/layout/topScript.jsp"></c:import>
  <link rel="stylesheet" href="/css/main.css" />

</head>
<body>
<div id="wrap">
      <c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
      <div id="right">
        <header>
          <div class="header_wrap">
            <div class="header_message">
              <p>이재혁 님 환영합니다</p>
            </div>
            <div class="header_navi">
              <a href="#">조직도</a>
              <a href="#">로그인</a>
              <a href="#">로그아웃</a>
              <a href="#">마이페이지</a>
            </div>
          </div>
        </header>
        <!-- main내용  -->
        <section id="mainContents"> 
        	<h1>근태 수정 요청 목록</h1>

          <div id="req_btn">
            <button>근태 수정 요청</button>
          </div>

          <div id="req_list">
            목록 들어갈 자리
          </div>
        </section>
        
      </div>
    </div>
</body>
<c:import url="/WEB-INF/views/layout/btmScript.jsp"></c:import>
</html>