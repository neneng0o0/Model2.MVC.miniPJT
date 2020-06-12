<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>상품등록</title>

	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	
	<style>
 		body {
            padding-top : 50px;
            font-family: 'S-CoreDream-3Light'
        }
        
        #myButton {
	background-color:#95a5c9;
	border-radius:13px;
	display:inline-block;
	cursor:pointer;
	color:#f7f7f7;
	font-family:Verdana;
	font-size:14px;
	padding:12px 24px;
	text-decoration:none;
	}
	
	#myButton:hover {
	background-color:#cca6cc;
	}
	
	#myButton:active {
	position:relative;
	top:1px;
	}
        
        
     @font-face { font-family: 'S-CoreDream-3Light'; 
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') 
     format('woff'); font-weight: normal; font-style: normal; }  
        
        
        
        
        
        
     </style>
     
     
     
	
	<script type="text/javascript">
	
	$(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 $( "button.btn.btn-addmore" ).on("click" , function() {
				self.location = "/product/addProductView.jsp;"
			});
	});
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			var url = ""
			 $( "button.btn.btn-confirm" ).on("click" , function() {
				 $(self.location).attr("href","/product/listProduct?menu=manage");
				 /* history.go(-1); */
				});
		}); 
</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	

</head>

<body>


<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info">상품 등록 완료</h3>
	    </div>
		
		<hr/>

		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품명</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodName}</div>
		</div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품상세정보</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodDetail}	</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>제조일자</strong></div>
			<div class="col-xs-8 col-md-4">${product.manuDate}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>가격</strong></div>
			<div class="col-xs-8 col-md-4">${product.price}</div>
		</div>
		
		<hr/>
		
       
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품이미지</strong></div>
			<div class="col-xs-8 col-md-4">${product.fileName}</div>
		</div>
		
		
		
		<hr/>
        
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" class="btn btn-confirm" id="myButton">확인</button>
	  			<button type="button" class="btn btn-addmore" id="myButton">추가등록</button>
	  		</div>
		</div>

		<br/> 
		
 	</div>

</body>
</html>
