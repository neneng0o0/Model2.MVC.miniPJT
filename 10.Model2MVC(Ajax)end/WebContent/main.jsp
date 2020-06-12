<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  CSS 추가 : 툴바에 화면 가리는 현상 해결 :  주석처리 전, 후 확인-->
	<style>
        
     @font-face { font-family: 'TmonMonsori'; 
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/TmonMonsori.woff') 
	format('woff'); font-weight: normal; font-style: normal; }
	
	@font-face{ 
	font-family: 'MyWebFont';
	src: url('WebFont.eot');
	src: url('WebFont.eot?#iefix') format('embedded-opentype'),
	     url('WebFont.woff') format('woff'),
	     url('WebFont.ttf') format('truetype'),
	     url('WebFont.svg#webfont') format('svg');
}
   
        
        body {
            padding-top : 70px;
            font-family: 'S-CoreDream-3Light';
            
        }
        h2 {font-family: 'TmonMonsori';
        }
       
        
      	</style> 
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	 	
	
</head>
	
<body>

		<!-- ToolBar Start /////////////////////////////////////-->
		<jsp:include page="/layout/toolbar.jsp" />
	   	<!-- ToolBar End /////////////////////////////////////-->


		<div class=".col-xs-6 .col-md-3">
		</div>
		
		
		
		<div class=".col-xs-6 .col-md-6">
		
	<!--  아래의 내용은 http://getbootstrap.com/getting-started/  참조 -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
      <class="lead"><p>PIROGOM</p></class>
      <hr/>
        <h2>여름 </h2>
        <p>----</p>
         <p>행복하세요</p>
     </div>
    </div>

	<!-- 참조 : http://getbootstrap.com/css/   : container part..... -->
	<div class="container">
	 <div class="row marketing">
        <div class="col-lg-6">
        <h5>툴바 네비게이션바 양 사이드 컬러변경하기...</h5>
        <h5>전체 컬러 통일 언제...</h5>
        
        
        <div class="page-header">
        <h5>자리배치:최신 등록 상품 이미지가 여기에서보여짐</h5>
      </div>
      
				<!-- carousel를 구성할 영역 설정 -->
				<div style="width: 500px;margin: 100px;">
				<!-- carousel를 사용하기 위해서는 class에 carousel와 slide 설정한다. -->
				<!-- carousel는 특이하게 id를 설정해야 한다.-->
				<div id="carousel-example-generic" class="carousel slide" >
				<!-- carousel의 지시자 -->
				<!-- 지시자라고는 하는데 ol태그의 class에 carousel-indicators를 넣는다. -->
				<ol class="carousel-indicators">
				<!-- li는 이미지 개수만큼 추가하고 data-target은 carousel id를 가르킨다. -->
				<!-- data-slide-to는 순서대로 0부터 올라가고 0은 active를 설정한다. -->
				<!-- 딱히 이 부분은 옵션별로 설정하게 없다. -->
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				</ol>
				<!-- 실제 이미지 아이템 -->
				<!-- class는 carousel-inner로 설정하고 role은 listbox에서 설정한다. -->
				<div class="carousel-inner" role="listbox">
				<!-- 이미지의 개수만큼 item을 만든다. 중요한 포인트는 carousel-indicators의 li 태그 개수와 item의 개수는 일치해야 한다. -->
				<div class="item active">
				<!-- 아미지 설정- -->
				<img src=""  style="width:100%">
				<!-- 캡션 설정 (생략 가능) -->
				<!-- 글자 색은 검은색 -->
				<div class="carousel-caption" style="color:black;">
				ㅠㅠㅠㅠㅠㅠ
				</div>
				</div>
				<div class="item">
				<img src="" style="width:100%">
				<div class="carousel-caption" style="color:black;">
				으아아아
				</div>
				</div>
				</div>
				<!-- 왼쪽 화살표 버튼 -->
				<!-- href는 carousel의 id를 가르킨다. -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<!-- 왼쪽 화살표 -->
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				</a>
				<!-- 오른쪽 화살표 버튼 -->
				<!-- href는 carousel의 id를 가르킨다. -->
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<!-- 오른쪽 화살표 -->
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				</a>
				</div>
				</div>


				<script>
				$(function(){
				// 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
				$('#carousel-example-generic').carousel({
				// 슬리아딩 자동 순환 지연 시간
				// false면 자동 순환하지 않는다.
				interval: 1000,
				// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
				pause: "hover",
				// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
				wrap: true,
				// 키보드 이벤트 설정 여부(?)
				keyboard : true
				});
				});
				</script>





    </div> <!-- /container -->

        
        
  	 </div>
  	 </div>
  	 </div>
  	 
  	 <br/><hr/><br/>
  	 <footer class="footer">
        <p align="center">&copy; 2020 miniPJT </p>
      </footer>
		
		
		</div>
		
	<div class=".col-xs-6 .col-md-3">
		</div>
		

</body>

</html>