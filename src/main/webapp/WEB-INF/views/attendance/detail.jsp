<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
<head>
  <style>
    h3 {
      margin-top: 40px !important;
      text-align: center;
    }
  </style>

  <c:import url="/WEB-INF/views/layout/base.jsp"></c:import>
</head>

<body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
		      <!-- sidebar -->
          <c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
          <!-- Layout container -->
          <div class="layout-page">
            <!-- Navbar -->
            <c:import url="/WEB-INF/views/layout/header.jsp"></c:import>

            <!-- Content wrapper -->
            <div class="content-wrapper">
              <!-- Content 내용 여기로 -->
              <div class="container-xxl flex-grow-1 container-p-y">
                <h3>근태 수정 요청서</h3>

                <form>
                  <div class="row g-3">
                    <div class="col-md-6">
                      <label for="requestDate" class="form-label">수정요청일</label>
                      <input type="date" id="requestDate" name="modifyDate" class="form-control" value="${vo.modifyDate}" disabled>
                    </div>
                    <div class="col-md-6">
                      <label for="requestTime" class="form-label">수정요청시간</label>
                      <input type="time" id="requestTime" name="modifyTime" class="form-control" value="${vo.modifyTime}" disabled>
                    </div>
                  </div>
                  <div class="row g-3">
                    <div class="col-md-6">
                      <label for="writer" class="form-label">작성자</label>
                      <sec:authentication property="Principal" var="user"/>
                        <input type="text" id="writer" value="${user.name}" class="form-control" disabled>
                        <input type="hidden" id="num" name="employeeNum" value="${user.employeeNum}">
                    </div>
                    <div class="col-md-6">
                    <c:set var="radioType" value="${vo.type}" />
                      <input type="radio" id="on" name="type" value="출근" ${radioType eq '출근' ? 'checked' : ''} class="form-check-input" disabled>
                      <label for="on" class="form-check-label">출근</label>
    
                      <input type="radio" id="off" name="type" value="퇴근" ${radioType eq '퇴근' ? 'checked' : ''} class="form-check-input" disabled>
                      <label for="off" class="form-check-label">퇴근</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <label for="content" class="form-label">요청사유</label>
                    <textarea name="requestContents" id="content" cols="30" rows="5" class="form-control" disabled>${vo.requestContents}</textarea>
                  </div>
                  <button type="button" id="before_btn" class="btn btn-primary">이전</button>
                </form>
              </div>
              <!-- / Content --> 
              
              <div class="content-backdrop fade"></div>
            </div>
            <!-- Content wrapper -->
          </div>
        <!-- / Layout page -->
      <div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->
  

    <c:import url="/WEB-INF/views/layout/js.jsp"></c:import>

    <script>
      $('#before_btn').on('click', function(){
        $(location).attr('href', '/attendanceModify/list?employeeNum='+$('#num').val());
      })
    </script>
  </body>
</html>
