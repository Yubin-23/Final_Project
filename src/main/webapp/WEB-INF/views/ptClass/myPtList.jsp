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

<style>

	.btn{
	display: inline-flex important;
	align-items: center important;
	justify-content: center important;
}

.rounded-fill{
	border-radius: 50rem !important;
}

.btn-label-primary{
	color:#696cff !important;
	border-color: rgba(0,0,0,0) !important;
	background: #e7e7ff !important;
}
.btn-label-primary:hover{
border-color: rgba(0,0,0,0) !important;
    background: #5f61e6 !important;
    color: #fff !important;
    box-shadow: 0 0.125rem 0.25rem 0 rgba(105,108,255,.4) !important;
    transform: translateY(-1px) !important;
}
</style>
<head>
  <c:import url="/WEB-INF/views/layout/base.jsp"></c:import>
  <script type="text/javascript">
  
  </script>
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
                <p>회원조회</p>
                
                <div class="card">
                	<div class="table-responsive text-nowrap">
                		<table class="table">
                			<thead>
                			<tr>
                				<th>번호</th>
                				<th>이름</th>
                				<th>전화번호</th>
                				<th>성별</th>
                				<th style="text-align: center;" id="btn" onclick="openModal()">수업예약</th>
                				
                			</tr>
                			</thead>
                			<tbody class="table-border-bottom-0">
                				
               					<c:forEach items="${list}" var="vo">
									<tr>
										
										<td>${vo.memberNum}</td>
										<td><a href="#" onclick="sendData2('${vo.memberNum}', '${vo.employeeNum}', '${vo.memberName}')">${vo.memberName}</a></td>
										<td>${vo.phone}</td>
										<td>${vo.gender}</td>
										<td>${vo.joinDate}</td>
										<td style="text-align: center;"><button class="btn rounded-pill btn-label-primary" onclick="sendData('${vo.memberNum}', '${vo.employeeNum}', '${vo.memberName}')">수업예약</button></td>
									 	
									
                					</tr>
                				</c:forEach>
                			</tbody>
                		</table>
                	</div>	
                </div>
		

              </div>
              <!-- / Content --> 
              
              
             
                     

             
  

    <c:import url="/WEB-INF/views/layout/js.jsp"></c:import>
    <script type="text/javascript">
    /* function sendData(memberNum, employeeNum, name) {
        $.ajax({
          type: '	',
          url: './addClass',
          data: {
            memberNum: memberNum,
            employeeNum: employeeNum,
            name: name
          },
          success: function() {
            console.log("data 전송 성공");
            window.location.href = './addClass';
          },
          error: function() {
            console.log("데이터 전송 실패");
          }
        });
      } */
      
      function sendData(memberNum, employeeNum, memberName) {
    	    var url = './addClass?' + 'memberNum=' + memberNum + '&employeeNum=' + employeeNum + '&memberName=' + memberName;
    	    history.replaceState({}, null, url); // URL에서 파라미터를 제거하고 숨깁니다.
    	    window.location.href = url; // 페이지를 새 URL로 이동합니다.
    	  }
      
      function sendData2(memberNum, employeeNum, memberName) {
    	  var url = '/trainer/ptLog?' + 'memberNum=' + memberNum + '&employeeNum=' + employeeNum + '&memberName=' + memberName;
  	    history.replaceState({}, null, url); // URL에서 파라미터를 제거하고 숨깁니다.
  	    window.location.href = url; // 페이지를 새 URL로 이동합니다.
  	  }
      
      
    </script>
  </body>
</html>