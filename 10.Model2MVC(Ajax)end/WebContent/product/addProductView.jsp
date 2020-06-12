<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>


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
        
        
      @font-face { font-family: 'TmonMonsori'; 
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/TmonMonsori.woff') 
	format('woff'); font-weight: normal; font-style: normal; }
	
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
	
	
	
	
	
	
	body h1 { 
			color:#3d405b;
			font-family: 'TmonMonsori';
			}

	</style>
	

	
	
 <script type="text/javascript" src="../javascript/calendar.js"></script>
	<script type="text/javascript">
	
	
function fncAddProduct(){
	
		var name=$("input[name='prodName']").val();
		var detail=$("input[name='prodDetail']").val();
		var manuDate=$("input[name='manuDate']").val();
		var price=$("input[name='price']").val();

	if(name == null || name.length<1){
		alert("상품명은 반드시 입력하여야 합니다.");
		return;
	}
	if(detail == null || detail.length<1){
		alert("상품상세정보는 반드시 입력하여야 합니다.");
		return;
	}
	//if(manuDate == null || manuDate.length<1){
	//	alert("제조일자는 반드시 입력하셔야 합니다.");
	//	return;
	//}
	if(price == null || price.length<1){
		alert("가격은 반드시 입력하셔야 합니다.");
		return;
	}
	$("form").attr("method" , "POST").attr("action" , "/product/addProduct").attr("enctype","multipart/form-data").submit();
	
	}

//============= Event 처리 및  연결 =============
	$(function() {
				//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
				$( "button.btn.btn-primary" ).on("click" , function() {
					fncAddProduct();
				});
			});	
				
	
	
	
	$(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("a[href='#' ]").on("click" , function() {
			$("form")[0].reset();
			self.location = "/main.jsp;"
		});
	});	

	</script>
</head>

<body>


<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

<br/>

<form name="detailForm">


<div class="container">
	
		<class="bg-primary text-center"><h1 align="center">상품등록</h1></class>
		<br/>
		<hr/>
		<br/>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">




<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품명</strong></div>
			<div class="col-xs-8 col-md-4"><input type="text" name="prodName"
			 class="form-control" placeholder="상품명"></div>
		</div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품상세정보</strong></div>
			<div class="col-xs-8 col-md-4"><input type="text" name="prodDetail" 
			class="form-control" placeholder="상품상세정보"/></div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>제조일자</strong></div>
			<div class="col-xs-8 col-md-4"><input type="text" name="manuDate" readonly="readonly" 
			class="form-control" placeholder="제조일자"></div>
				&nbsp;<img src="../images/ct_icon_date.gif" width="15" height="15" 
										onclick="show_calendar('document.detailForm.manuDate',
												document.detailForm.manuDate.value)"/></div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>가격</strong></div>
			<div class="col-xs-8 col-md-4"><input type="text" name="price" 	
			class="form-control" placeholder="가격"/></div>
		</div>
		
	
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품이미지</strong></div>
			<div class="col-xs-8 col-md-4"><input type="file" name="file" 
			id="exampleInputFile" placeholder="상품이미지" /></div>
			
		</div>
		
		
<hr/>
<br/>

<div class="form-group">
			    	<div class="col-sm-offset-4  col-sm-4 text-right">
			      		<button type="button" class="btn btn-primary"id="myButton"   >등록</button>
				  		<a class="btn btn-primary btn" href="#" role="button" id="myButton" >취소</a>
			    	</div>
			  	</div>
				
				<br/>
		

</form>
</body>
</html>