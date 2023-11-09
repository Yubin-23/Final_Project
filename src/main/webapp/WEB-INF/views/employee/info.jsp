<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
<head>
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
                <div class="nav-align-top mb-4">
                  <ul class="nav nav-tabs nav-fill" role="tablist">
                    <li class="nav-item">
                      <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" data-bs-target="#navs-justified-info" aria-controls="navs-justified-home" aria-selected="true">
                        내 정보
                      </button>
                    </li>
                    <li class="nav-item">
                      <button type="button" id="toTab" class="nav-link" role="tab" data-bs-toggle="tab"  data-bs-target="#navs-justified-updatePw" aria-controls="navs-justified-profile" aria-selected="false">
                        비밀번호 변경
                      </button>
                    </li>
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane fade show active" id="navs-justified-info" role="tabpanel">
                      <p class="mb-0">
                          <div class="col-xxl">
                              <div class="card mb-4">
                                <div class="card-header d-flex align-items-center justify-content-between" style="flex-direction: column;">
                                  <h1 class="mb-0">${employeeVO.name} <span class="position_inner"></span> 정보</h1>
                                  <div class="proFile_con">
                                    <img src="../file/employee/${employeeVO.proFile}" alt="직원 프로필">
                                  </div>
                                </div>
                                <div class="card-body">
                                  <div id="detailCon">
                                    <div id="detail_left">
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">사번</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.employeeNum}" readonly/>
                                        </div>
                                      </div>
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">이름</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.name}" readonly/>
                                        </div>
                                      </div>
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">전화번호</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.phone}" readonly/>
                                        </div>
                                      </div>
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">주소</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.address}" readonly/>
                                        </div>
                                      </div>
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">생년월일</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.birth}" readonly/>
                                        </div>
                                      </div>
                                    </div>
                                    <div id="detail_right">
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">입사일</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.joinDate}" readonly/>
                                        </div>
                                      </div>
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">퇴사일</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.quitDate}" readonly/>
                                        </div>
                                      </div>
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">성별</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.gender}" readonly/>
                                        </div>
                                      </div>
                                      <c:if test="${employeeVO.position eq 'ROLE_TRAINER'}">
                                        <div class="row mb-3">
                                          <label class="col-sm-2 col-form-label" for="basic-default-name">경력</label>
                                          <div class="col-sm-10">
                                            <c:forEach items="${employeeVO.careers}" var="career">
                                              <input type="text" class="form-control" id="basic-default-name" value="${career.caTitle}" readonly/>
                                              <input type="text" class="form-control" id="basic-default-name" value="${career.caPassDate}" readonly/>
                                            </c:forEach>
                                          </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label" for="basic-default-name">자격증</label>
                                            <div class="col-sm-10">
                                              <c:forEach items="${employeeVO.certifications}" var="cer">
                                                <input type="text" class="form-control" id="basic-default-name" value="${cer.cerTitle}" readonly/>
                                                <input type="text" class="form-control" id="basic-default-name" value="${cer.cerPassDate}" readonly/>
                                              </c:forEach>
                                            </div>
                                        </div>
                                      </c:if>
                                      <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name">서명이미지</label>
                                        <div class="col-sm-10">
                                          <!-- <input type="text" class="form-control" id="basic-default-name" value="${employeeVO.signFile}" readonly/> -->
                                          <img src="../file/employee/${employeeVO.signFile}" id="basic-default-name sign" alt="개인 싸인">
                                        </div>
                                      </div>
                                    </div>
                                    <form action="" id="upfrm">
                                      <input type="hidden" name="employeeNum" value="${employeeVO.employeeNum}">
                                    </form>
                                    <div class="proBtn">
                                      <button type="button" class="btn btn-primary" id="upBtn" data-url="/employee/infoUpdate">수정</button>
                                      <!-- <button type="button" class="btn btn-primary" id="toBtn" >수정</button> -->
                                    </div>
                                  </div>
                                </div>
                              </div>
                          </div>
                      </p>
                    </div>
                    <div class="tab-pane fade" id="navs-justified-updatePw" role="tabpanel">
                      <p class="mb-0">
                          
                          
                        <form:form modelAttribute="passwordVO" action="/employee/updatePw" method="post" id="pwFrm">
                              <input type="hidden" name="employeeNum" value="${employeeVO.employeeNum}"/>
                              <input type="hidden" name="password" value="${employeeVO.password}"/>
                              

                              <div class="row mb-3">
                                <form:label path="inputPw" class="col-sm-2 col-form-label" for="basic-default-name">기존 비밀번호</form:label>
                                <div class="col-sm-10">
                                  <form:password path="inputPw" cssClass="form-control" id="basic-default-name"/>
                                	<form:errors path="inputPw"></form:errors>
                                </div>
                              </div>
                              <div class="row mb-3">
                                <form:label path="newPw" class="col-sm-2 col-form-label" for="basic-default-name">새 비밀번호</form:label>
                                <div class="col-sm-10">
                                  <form:password path="newPw" cssClass="form-control" id="basic-default-name"/>
                                	<form:errors path="newPw"></form:errors>
                                </div>
                              </div>
                              <div class="row mb-3">
                                <form:label path="pwCheck" class="col-sm-2 col-form-label" for="basic-default-name">비밀번호 확인</form:label>
                                <div class="col-sm-10">
                                	<form:password path="pwCheck"  cssClass="form-control" id="basic-default-name"/>
                                 	<form:errors path="pwCheck"></form:errors>
                                </div>
                              </div>
                              <div class="proBtn" style="text-align: center;">
                                <button type="submit" id="upBtn" class="btn btn-primary">비밀번호 변경</button>
                              </div>
                          </form:form>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
              <!-- / Content --> 
              
              
              <!-- Footer -->
                <!-- <footer class="content-footer footer bg-footer-theme">
                  <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                    <div class="mb-2 mb-md-0">
                      ©
                      <script>
                        document.write(new Date().getFullYear());
                      </script>
                      , made with ❤️ by
                      <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
                    </div>
                    <div>
                      <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                      <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                      <a
                        href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                        target="_blank"
                        class="footer-link me-4"
                        >Documentation</a
                      >

                      <a
                        href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                        target="_blank"
                        class="footer-link me-4"
                        >Support</a
                      >
                    </div>
                  </div>
                </footer> -->
                <!-- / Footer -->       

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
    <script type="text/javascript" src="/js/employee/info.js"></script>
    <script>
  
      let error = '${error}';
      
      if (error != '' && error == 'true') {
        //location.href = "/employee/info";
        $("#toTab").click();
      }
    </script>
  </body>
</html>