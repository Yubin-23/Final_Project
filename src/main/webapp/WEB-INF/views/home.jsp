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
  data-assets-path="/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <style>
      #off {
        display: none;
      }
      .row {
	    height: 400px;
	  }
	  #notice{
	  	display: flex;
	  }
	  #plus {
	    flex: 0 0 auto;
	    width: 3%;
	    font-size: 25px;
	  }
	  #ntitle {
	    flex: 0 0 auto;
	    width: 94%;
	  	margin: auto;
	  }
	  #hr1{
	  	background-color: #696cff;
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
      <!-- /sidebar -->
        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <c:import url="/WEB-INF/views/layout/header.jsp"></c:import>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
             
              <div class="row mb-5">
                <div class="col-md-6 col-lg-4 mb-3" style="width: 25%;">
                  <div class="card h-100">
                    <div class="card-body">
                      <sec:authentication property="principal" var="user"/>	
                      <h5 class="card-title" id="user" data-num="${user.employeeNum}">
	                      ${user.name} 
		               	  ${user.position}
	                  </h5>
	                  <div id="btn_block">
               		  <button type="button" id="on" class="btn btn-primary">출근하기</button>
                	  <button type="button" id="off" class="btn btn-primary">퇴근하기</button>
              		  </div>
                      <p class="card-text">
                        Some quick example text to build on the card title and make up the bulk of the card's content.
                      </p>
                      <a href="javascript:void(0)" class="btn btn-outline-primary">Go somewhere</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-3" style="width: 45%;">
                  <div class="card h-100">
                    <div class="card-body">
                      <div id="notice"><h5 id="ntitle" class="card-title">최근 공지</h5><a id="plus" href="/notice/list">+</a></div>
	                  <hr id="hr1">
	                  <div class="table-responsive text-nowrap">
											<table class="table table-hover">
												<tbody class="table-border-bottom-0">
													<c:forEach items="${list}" var="n">
														<tr>
															<td><span class="badge bg-label-primary me-1">${n.category}</span>
																<a href="./notice/detail?noticeNum=${n.noticeNum}">${n.title}</a></td>
															<td>${n.name}</td>
															<td>${n.modDate}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-3" style="width: 30%;">
                  <div class="card h-100">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <h6 class="card-subtitle text-muted">Support card subtitle</h6>
                      
                      <p class="card-text">Bear claw sesame snaps gummies chocolate.</p>
                      <a href="javascript:void(0);" class="card-link">Card link</a>
                      <a href="javascript:void(0);" class="card-link">Another link</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- / Content -->

            <!-- Footer -->
            
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

    <script src="/js/attendance/work.js"></script>
  </body>
</html>