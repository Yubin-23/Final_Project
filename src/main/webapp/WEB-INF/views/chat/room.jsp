<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
	<style>
	  	h3 {
		    margin-top: 40px !important;
		    text-align: center;
		}
		.col-xl1 {
	    	flex: 0.4 0 0%;
	    }
	    .card .card-header + .card-body, .card .card-header + .card-content > .card-body:first-of-type {
		    padding-top: 0;
		    height: 550px;
		}
		#msgArea{
			width: 100%;
		    height: 90%;
		    background-color: #E7E7FF;
		    padding: 0.8rem 0 1.5rem;
		}
		.alert-primary{
			background-color: #696CFF;
			color: white;
		}
		.msg{
			padding: 1rem 2rem;
			margin: 0.7rem 1.5rem 0 1.5rem;
		}
		#chatDate{
			padding-left: 83%;
			font-size: 11px;
		}
	</style>
</head>
  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
		<!-- sidebar -->
        <c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
		<!-- /sidebar -->
        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <c:import url="/WEB-INF/views/layout/header.jsp"></c:import>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h3>MESSENGER</h3>

              <!-- Basic Layout -->
              <div class="row">
                <div class="col-xl1">
                  <div class="card mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                      <h5 class="mb-0">내 이름 직급</h5>
                    </div>
                    <div class="card-body">
                    	<div class="input-group mb-4">
	                        <input
	                          id="searchName"
	                          type="text"
	                          class="form-control"
	                          aria-label="Recipient's username"
	                          aria-describedby="button-addon2"
	                        />
	                        <button class="btn btn-outline-primary" type="button" id="search">조회</button>
                      	</div>
                    	<div id="listBox">
	                    	<c:forEach items="${list}" var="li">
	                        	<a href="#" class="chatList" data-empNum="${li.employeeNum}" data-name="${li.name}" data-pos="${li.position}">${li.name} ${li.position}</a><br>                   		
	                    	</c:forEach>
                    	</div>
                    </div>
                  </div>
                </div>
                <div class="col-xl">
                  <div class="card mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                      <h5 id="someone" class="mb-0">채팅하려는 대상을 선택해 주세요</h5>
               
                    </div>
                    <div class="card-body">
                    	<div id="msgArea" class="card mb-4"></div>  
                    	<div class="input-group">
	                        <input
	                          id="msg"
	                          type="text"
	                          class="form-control"
	                          aria-label="Recipient's username"
	                          aria-describedby="button-addon2"
	                        />
	                        <button class="btn btn-outline-primary"
	                                type="button"
	                                id="button-send"
	                                data-room=""
	                                data-receiver=""
	                                >보내기</button>
                      	</div>
                    </div>
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
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->
	<c:import url="/WEB-INF/views/layout/js.jsp"></c:import>
    
    <!-- room js -->
    <script src="../js/room.js"></script>
    
  </body>
</html>
