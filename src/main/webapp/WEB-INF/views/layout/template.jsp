<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/layout/css.jsp"></c:import>
<c:import url="/WEB-INF/views/layout/topScript.jsp"></c:import>
<link rel="stylesheet" href="/css/main.css" />

</head>
<body>
<div id="wrap">
      <section class="app">
        <aside class="sidebar">
          <nav class="sidebar-nav">
            <ul>
              <li>
                <a href="#"><i class="fa-solid fa-user"></i> <span>직원관리</span></a>
                <ul class="nav-flyout">
                  <li>
                    <a href="#"
                      >전체 직원 목록</a
                    >
                  </li>
                  
                </ul>
              </li>
              <li>
                <a href="#"
                  ><i class="fa-solid fa-users"></i>
                  <span class="">회원관리</span></a
                >
                <ul class="nav-flyout">
                  <li>
                    <a href="#">전체 회원 관리</a>
                  </li>
                
                </ul>
              </li>
              <li>
                <a href="#"
                  ><i class="fa-solid fa-ticket"></i>
                  <span class="">이용권 관리</span></a
                >
                <ul class="nav-flyout">
                  <li>
                    <a href="#">이용권 목록</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="#"
                  ><i class="fa-solid fa-dumbbell"></i>
                  <span class="">시설관리</span></a
                >
                <ul class="nav-flyout">
                  <li>
                    <a href="#">전체 기구 목록</a>
                  </li>
                  <li>
                    <a href="#"
                      >기구 수리 요청 목록</a
                    >
                  </li>
                  <li>
                    <a href="#"
                      >전체 락커 목록</a
                    >
                  </li>
                </ul>
              </li>
              <li>
                <a href="#"
                  ><i class="fa-solid fa-list-check"></i>
                  <span class="">수업관리</span></a
                >
                <ul class="nav-flyout">
                  <li>
                    <a href="#"
                      >수업 조회</a
                    >
                  </li>
                  <li>
                    <a href="#"
                      >회원 조회</a
                    >
                  </li>
                </ul>
              </li>
              <li>
                <a href="#"
                  ><i class="fa-solid fa-clipboard-user"></i>
                  <span class="">근태 관리</span></a
                >
                <ul class="nav-flyout">
                  <li>
                    <a href="#">내 근태 조회</a>
                  </li>
                  <li>
                    <a href="#"
                      >전체 근태 조회</a
                    >
                  </li>
                  <li>
                    <a href="#"
                      >근태 수정 요청 목록</a
                    >
                  </li>
                </ul>
              </li>
              <li>
                <a href="#"
                  ><i class="fa-solid fa-file"></i>
                  <span class="">결재</span></a
                >
              </li>
              <li>
                <a href="#"
                  ><i class="fa-solid fa-plane"></i>
                  <span class="">휴가</span></a
                >
              </li>
              <li>
                <a href="#"
                  ><i class="fa-solid fa-comments"></i>
                  <span class="">채팅</span></a
                >
              </li>
            	<li>
                <a href="#"
                  ><i class="fa-solid fa-circle-user"></i>
                  <span class="">회원</span></a
                >
                <ul class="nav-flyout">
                  <li>
                    <a href="#">운동일지</a>
                  </li>
                  <li>
                    <a href="#"
                      >PT일지</a
                    >
                  </li>
                  <li>
                    <a href="#"
                      >식단관리</a
                    >
                  </li>
          </nav>
        </aside>
      </section>
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
        	<p>예시입니다 여기서부터 내용 작성해 주세요 maincss는 변경하시면 안됩니당</p>
        </section>
        
      </div>
    </div>
</body>
<c:import url="/WEB-INF/views/layout/btmScript.jsp"></c:import>
</html>