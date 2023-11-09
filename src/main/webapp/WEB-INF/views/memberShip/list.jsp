<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Insert title here</title>
  <style>
    h3 {
      margin-top: 40px !important;
      text-align: center;
    }
    #membership {
      text-align: right;
      margin: 30px;
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
                <h3>이용권 목록</h3>

                <div id="membership">
                  <button id="add_btn" class="btn btn-primary">이용권 등록</button>
                </div>
				        <div class="card">
                  <div id="list" class="table-responsive text-nowrap">
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>번호</th>
                          <th>이용권이름</th>
                          <th>종류</th>
                          <th>피티횟수/이용개월</th>
                          <th>가격</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${list}" var="vo" varStatus="i">
                          <tr>
                            <td>${i.index+1}</td>
                            <td>${vo.name}</td>
                            <td>
                              <c:choose>
                            		<c:when test="${vo.type.toString() eq 'h'}">
                            			헬스
                            		</c:when>
                            		<c:otherwise>
                            			PT
                            		</c:otherwise>
                            	</c:choose>
                            </td>
                            <td>
                            	<c:choose>
                            		<c:when test="${vo.type.toString() eq 'h'}">
                            			${vo.month}개월
                            		</c:when>
                            		<c:otherwise>
                            			${vo.ptCount}회
                            		</c:otherwise>
                            	</c:choose>
                            </td>
                            <td>${vo.price}원</td>
                            <td>
                              <button class="btn btn-primary del_btn" data-num="${vo.membershipNum}">삭제</button>
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              
              <c:if test="${not empty list}">
	              <ul class="pagination justify-content-center">
	                <li class="page-item prev ${pager.pre?'':'disabled'}">
	                  <a class="page-link move" data-num="${pager.startNum-1}" href="#"><i class="tf-icon bx bx-chevrons-left"></i></a>
	                </li>
	                <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
		                <li class="page-item">
		                  <a class="page-link move" data-num="${i}" href="#">${i}</a>
		                </li>
	                </c:forEach>
	                <li class="page-item next ${pager.next?'':'disabled'}">
	                  <a class="page-link move" data-num="${pager.lastNum+1}" href="#"><i class="tf-icon bx bx-chevrons-right"></i></a>
	                </li>
	              </ul>
			        </c:if>

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
    
    $('#add_btn').on('click', function(){
      $(location).attr('href', '/membership/form');
    })

    $('.del_btn').on('click', function(){
      const result = confirm('정말 삭제하시겠습니까?');
      if(result==true){
        // console.log($(this).data('num'))
        setDel($(this).data('num'));
      }
      
    })
    
    function setDel(membershipNum){
      $.ajax({
        type: 'get',
        url: '/membership/delete',
        data: {
          membershipNum: membershipNum
        },
        success: function(result){
          if(result.trim()>0){
            alert('이용권이 삭제되었습니다');
            location.reload();
          }else {
            alert('등록된 사용자가 있어 삭제가 불가합니다');
          }
        }
      })  
    }

    $('.pagination').on('click', '.move', function(){
      const num = $(this).attr('data-num');
      $(location).attr('href', '?page='+num)
    })
  </script>

</body>
</html>