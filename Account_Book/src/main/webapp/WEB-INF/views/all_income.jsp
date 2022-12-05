<%@page import="com.multi.mvc.AccountVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- 숫자 세 자리 단위로 콤마 찍기 라이브러리 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	/* 메뉴 클릭 시 이벤트 -> 해당 메뉴에 대한 content 출력 */
	$(function($) {
		$(".tab-content").eq(0).show(0); // 첫번째 tab 보여줌
		$(".tab-ul li").click(function() { // li 클릭하면
			var idx = $(this).index(); // tab-ul li 중 클릭한 것이 몇 번째인지 확인
			$(".tab-content").hide(); // tab-content 숨김
			$(".tab-content").eq(idx).show(); // 클릭한 것에 해당하는 tab-content 보여줌
			$(".tab-ul li").removeClass("active"); // active 클래스 지워줌
			$(this).addClass("active"); // 클릭한 것에 active 클래스 추가
			if(idx == 0){  // 누른 버튼이 수입/지출 관리이면 
				location.href="all.multi";
			} else if(idx == 1){  // 누른 버튼이 캘린더이면
				location.href=""; // 캘린더 페이지 호출할 Controller 주소 입력!
			} else if(idx == 2){ // 누른 버튼이 통계이면
				location.href=""; // 통계 페이지 호출할 Controller 주소 입력!
			} else{ // 누른 버튼이 목표지출이면
				location.href="intro.jsp";  // 목표지출 페이지 호출할 Controller 주소 입력!
			}
		});
	});
	/* 수입/지출 클릭 시 이벤트 */
	$(function($) {
		$(".tab-content2").eq(0).show(0); // 첫번째 tab 보여줌
		$(".tab-ul2 li").click(function() { // li 클릭하면
			var idx = $(this).index(); // tab-ul2 li 중 클릭한 것이 몇 번째인지 확인
			$(".tab-content2").hide(); // tab-content2 숨김
			$(".tab-content2").eq(idx).show(); // 클릭한 것에 해당하는 tab-content2 보여줌
			$(".tab-ul2 li").removeClass("active2"); // active2 클래스 지워줌
			$(this).addClass("active2"); // 클릭한 것에 active2 클래스 추가
			if(idx == 0){  // 누른 버튼이 전체이면 all.multi
				location.href="all.multi";
			} else if(idx == 1){  // 누른 버튼이 전체이면 all_expense.multi 
				location.href="all_income.multi";
			} else { // 누른 버튼이 지출이면 all_income.multi
				location.href="all_expense.multi";
			}
		});
	});
	/* 테이블 행 클릭 시 이벤트 -> 오른쪽 테이블에 클릭한 행 값들 삽입 */
	$(function () {
		$('#tableList tr').click(function() {  // 테이블 행 클릭 시
			var idVal = $(this).find("td:eq(0)").text();  // 클릭한 행의 id 값 idVal에 저장
			var paydateVal = $(this).find("td:eq(1)").text();  // 클릭한 행의 날짜 값 paydateVal에 저장
			var memoVal = $(this).find("td:eq(2)").text();
			var amountVal = $(this).find("td:eq(3)").text();
			//alert(paydateVal + " " + memoVal + " " + amountVal);
			
			var amount = amountVal.replaceAll(",", "");  // amountVal 값 콤마 없애기
			
			$('#id').attr('value', idVal);
			$('#paydate').attr('value', paydateVal);  // 날짜 input value에 paydateVal 값 넣기
			$('#memo').attr('value', memoVal);  // 내용 input value에 memoVal 값 넣기
			$('#amount').attr('value', amount);  // 금액 input value에 amountVal 값 넣기
			
			$('#idDel').attr('value', idVal);  // delete 버튼이 있는 form input에 삭제할 id setting
		})
		
	})
</script>
</head>
<body>
	<div class="total">
		<!-- 메뉴 -->
		<div class="menu">
			<h2 style="margin-left: 30px; margin-top: 20px;">
				<i class="fi fi-rr-money-check-edit"></i>가계부
			</h2>
			<ul class="tab-ul">
				<li class="active"><a id="tab1"><i class="fi fi-rr-add"></i>수입/지출 관리</a></li>
				<li><a id="tab2"><i class="fi fi-rs-calendar-check"></i>캘린더</a></li>
				<li><a id="tab3"><i class="fi fi-rs-chart-histogram"></i>통계</a></li>
				<li><a id="tab4"><i class="fi fi-rr-coins"></i>목표 지출</a></li>
			</ul>
		</div>
		<!-- 내용 -->
		<div class="content">
			<div class="tab-content">
				<!-- 수입/지출 관리 페이지 -->
				<h4 style="margin-left: 30px; margin-top: 20px;">
					<i class="fi fi-rr-add"></i>수입/지출 관리
				</h4>
				<hr style="width: 1700px;">
				<br>
					<div class="row" style="width: 1700px;">
					<!-- 왼쪽 div (수입/지출 select) -->
					<div class="col-md-6">
						<ul class="tab-ul2">
							<li style="float: left; margin-right: 0; width: 150px; text-align: center;"><a>전체</a></li>
							<li style="float: left; margin-right: 0; width: 150px; text-align: center;" class="active2"><a>수입</a></li>
							<li style="float: left; margin-right: 0; width: 150px; text-align: center;"><a>지출</a></li>
						</ul>
						<div class="content" style="width: 600px; height: 750px;">
							<div class="tab-content2">
								<!-- 수입 리스트 -->
								<br>
								<h4>총 수입</h4>
								<%
								List<AccountVO> list = (List<AccountVO>)request.getAttribute("list");
								
								int total = 0;
								for(int i=0; i<list.size(); i++){
									total = total + list.get(i).getAmount();
								}
								%>
								<h1><fmt:formatNumber value="<%= total %>" pattern="#,###"/></h1>
								<br>
								<table>
									<tr>
										<td><input type="text" class="form-control" placeholder="YYYY-MM"></td>
										<td><button class="btn-green" style="width: 80px; height: 38px;">선택</button></td>
									</tr>
								</table> <br>
								<div style="height: 600px; overflow: auto;">
								<table class="table table-hover" id=tableList>
									<thead>
										<tr>
											<th style="display: none;">No</th>
											<th>날짜</th>
											<th>내용</th>
											<th>금액</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="vo" items="${list}">
											<tr>
												<td style="display: none;">${vo.id}</td>
												<td>${vo.paydate}</td>
												<td>${vo.memo}</td>
												<td><fmt:formatNumber value="${vo.amount}" pattern="#,###"/></td> <!-- 숫자 세 자리 단위로 콤마 찍기 -->
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</div>
								<br>
							</div>
						</div>
						<br>
					</div>
					<!-- 오른쪽 div (수입/지출 등록) -->
					<div class="col-md-6">
						<h4 style="margin-left: 30px; font-weight: bold;">수입 / 지출 추가</h4>
						<form action="insert_account.multi" style="margin-left: 30px;">
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">날짜</td>
									<td><input type="date" class="form-control no-line" name="paydate"
										style="height: 50px;"></td>
								</tr>
							</table>
							<br>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">분류</td>
									<td>
									<td><label class="radio-inline"
										style="margin-right: 100px;"> <input type="radio"
											name="payselect" id="radio1" value="수입" checked> 수입
									</label> <label class="radio-inline"> <input type="radio"
											name="payselect" id="radio2" value="지출"> 지출
									</label></td>
								</tr>
							</table>
							<br>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">카테고리</td>
									<td><select name="category" class="custom-select no-line">
											<option selected></option>
											<option value="food">식비</option>
											<option value="trans">교통비</option>
											<option value="medi">의료비</option>
											<option value="leis">여가</option>
											<option value="etc">기타</option>
									</select></td>
								</tr>
							</table>
							<br>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">금액</td>
									<td><input type="text" class="form-control no-line" name="amount"></td>
								</tr>
							</table>
							<br>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">내용</td>
									<td><input type="text" class="form-control no-line" name="memo"></td>
								</tr>
							</table>
							<br> 
							<div style="float: left;">
								<button type="reset" class="btn-outline-green" style="width: 150px;">취소</button>
								<button type="submit" class="btn-green" style="width: 330px;">추가</button>
							</div>
						</form>
						<br><br><br>
						
						<!-- 수입/지출 수정 및 삭제 -->
						<div style="margin: 30px;">
							<div id="d1">
							<h4 style="font-weight: bold;">수입 / 지출 수정</h4>
							<form action="update_account.multi">
							<table style="width: 500px;">
								<tr>
									<td colspan="2"><input type="hidden" class="form-control no-line" name="id" id="id"
										style="height: 50px;"></td>
								</tr>
							</table>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">날짜</td>
									<td><input type="date" class="form-control no-line" name="paydate" id="paydate"
										style="height: 50px;"></td>
								</tr>
							</table>
							<br>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">분류</td>
									<td>
									<td><label class="radio-inline"
										style="margin-right: 100px;"> <input type="radio"
											name="payselect" id="payselect1" value="수입" checked> 수입
									</label> <label class="radio-inline"> <input type="radio"
											name="payselect" id="payselect2" value="지출"> 지출
									</label></td>
								</tr>
							</table>
							<br>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">카테고리</td>
									<td><select name="category" id="category" class="custom-select no-line">
											<option selected></option>
											<option value="food">식비</option>
											<option value="trans">교통비</option>
											<option value="medi">의료비</option>
											<option value="leis">여가</option>
											<option value="etc">기타</option>
									</select></td>
								</tr>
							</table>
							<br>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">금액</td>
									<td><input type="text" class="form-control no-line" name="amount" id="amount"></td>
								</tr>
							</table>
							<br>
							<table style="width: 500px;">
								<tr>
									<td style="width: 100px;">내용</td>
									<td><input type="text" class="form-control no-line" name="memo" id="memo"></td>
								</tr>
							</table>
							<br> 
							<div style="float: left;">
								<button type="submit" class="btn-green" style="width: 240px;">수정</button>
							</div>
						</form>
						<form action="delete_account.multi">
							<input type="hidden" name="id" id="idDel">
							<button type="submit" class="btn-green" style="width: 240px; margin-left: 5px;">삭제</button>
						</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>