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
  <c:import url="/WEB-INF/views/layout/btmScript.jsp"></c:import>

	<style>
    	h3 {
	    	margin-top: 40px !important;
	    	text-align: center;
	    }
	    .a1{
			color: white;
			margin: 10px 0;
			display: right;
		}
		.input-group{
			width: 50%;
		}
		.pinFont{
			font-weight: bold;
			color: black;
		}
		.a2{
			color: #435971;
		}
		.a3{
			color:black;
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
			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->
				<c:import url="/WEB-INF/views/layout/header.jsp"></c:import>
				
				<!-- Content wrapper -->
				<div class="content-wrapper">
					 <!-- Content 내용 여기로 -->
					<div class="container-xxl flex-grow-1 container-p-y">
					<h3>공지사항</h3>
					
					<div class="row">
						<div class="nav-align-top mb-4">
							<ul class="nav nav-tabs nav-fill" role="tablist">
								<li class="nav-item">
									<button
									id="total"
									type="button"
									class="nav-link active"
									role="tab"
									data-bs-toggle="tab"
									data-bs-target="#navs-justified-home"
									aria-controls="navs-justified-home"
									aria-selected="true"
									>
									<i class="tf-icons bx bx-home"></i> 전체
									</button>
								</li>
								<li class="nav-item">
									<button
									data-cat="인사"
									type="button"
									class="nav-link category"
									role="tab"
									data-bs-toggle="tab"
									data-bs-target="#navs-justified-home"
									aria-controls="navs-justified-home"
									aria-selected="false"
									>
									<i class="tf-icons bx bx-user"></i> 인사
									</button>
								</li>
								<li class="nav-item">
									<button
									data-cat="시설"
									type="button"
									class="nav-link category"
									role="tab"
									data-bs-toggle="tab"
									data-bs-target="#navs-justified-home"
									aria-controls="navs-justified-home"
									aria-selected="false"
									>
									<i class="fa-solid fa-dumbbell"></i> 시설
									</button>
								</li>
								<li class="nav-item">
									<button
									data-cat="휴무"
									type="button"
									class="nav-link category"
									role="tab"
									data-bs-toggle="tab"
									data-bs-target="#navs-justified-home"
									aria-controls="navs-justified-home"
									aria-selected="false"
									>
									<i class="fa-solid fa-plane"></i> 휴무
									</button>
								</li>
								<li class="nav-item">
									<button
									data-cat="기타"
									type="button"
									class="nav-link category"
									role="tab"
									data-bs-toggle="tab"
									data-bs-target="#navs-justified-home"
									aria-controls="navs-justified-home"
									aria-selected="false"
									>
									<i class="tf-icons bx bx-message-square"></i> 기타
									</button>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane fade show active" id="navs-justified-home" role="tabpanel">
									<div id="box">
									<div class="input-group">
									  <select id="kind" name="kind" class="select2 form-select">
									  	<option selected value="title">Title</option>
									  	<option value="contents">Contents</option>
									  	<option value="name">Name</option>
									  </select>
									  <input type="text" class="form-control" id="search"/>
									  <button
									    class="btn btn-outline-primary"
									    id="searchBtn"
									    type="button"
									    >
									    조회
									  </button>
									</div>
									
									<div style="display: flex; justify-content: flex-end;">
										<a class="a1 btn btn-primary" href="./add">글쓰기</a>
									</div>
									<!-- Hoverable Table rows -->
									
										<div class="table-responsive text-nowrap">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>번호</th>
														<th>제목</th>
														<th>작성자</th>
														<th>작성일</th>
														<th>조회</th>
													</tr>
												</thead>
												<tbody class="table-border-bottom-0">
													<c:forEach items="${pinList}" var="p">
														<tr class="table-primary pinFont">
															<td>${p.noticeNum}</td>
															<td><span class="badge bg-label-primary me-1">${p.category}</span>
																<a class="a3" href="./detail?noticeNum=${p.noticeNum}">${p.title}</a></td>
															<td>${p.name}</td>
															<td>${p.modDate}</td>
															<td>${p.hit}</td>
														</tr>
													</c:forEach>
													<c:forEach items="${list}" var="li">
														<tr>
															<td>${li.noticeNum}</td>
															<td><span class="badge bg-label-primary me-1">${li.category}</span>
																<a class="a2" href="./detail?noticeNum=${li.noticeNum}">${li.title}</a></td>
															<td>${li.name}</td>
															<td>${li.modDate}</td>
															<td>${li.hit}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<nav aria-label="Page navigation" style="background-color: white;">
											<ul id="pageBox" class="pagination justify-content-center">
												<li class="page-item prev ${pager.pre?'':'disabled'}">
													<button class="pageBtn page-link" data-p="${pager.startNum-1}">
														<i class="tf-icon bx bx-chevrons-left"></i>
													</button>
												</li>
												<c:if test="${pager.lastNum==0}">
													<li class="page-item">
														<button class="page-link" data-p="1">1</button>
													</li>
												</c:if>
												<c:forEach  begin="${pager.startNum}" end="${pager.lastNum}" var="i">
													<li class="page-item">
														<button class="pageBtn page-link" data-p="${i}">${i}</button>
													</li>
												</c:forEach>
												<li class="page-item next ${pager.next?'':'disabled'}">
													<button class="pageBtn page-link" data-p="${pager.lastNum+1}">
														<i class="tf-icon bx bx-chevrons-right"></i>
													</button>
												</li>
											</ul>
										</nav>
									</div>
									<!--/ Hoverable Table rows -->
								</div>
							</div>
						</div>
						<!-- /Account -->
						</div>
					</div>
				</div>
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
    <script src="../js/notice/noticeList.js"></script>
    <c:import url="/WEB-INF/views/layout/js.jsp"></c:import>
  </body>
</html>