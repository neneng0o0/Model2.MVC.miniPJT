<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<title>��ǰ ����</title>


<!-- ���� : http://getbootstrap.com/css/   ���� -->
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

<style >


</style>







<script type="text/javascript" src="../javascript/calendar.js"></script>
<script type="text/javascript">


function fncUpdateProduct(){
		
	var name = $("input[name = 'prodName']").val();
	var detail = $("input[name = 'prodDetail']").val();
	var manuDate = $("input[name = 'manuDate']").val();
	var price = $("input[name = 'price']").val();

	if (name == null || name.length < 1) {
		alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if (detail == null || detail.length < 1) {
		alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if (manuDate == null || manuDate.length < 1) {
		alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	if (price == null || price.length < 1) {
		alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	

	$("form").attr("method" , "POST").attr("action", "/product/updateProduct").submit();

}

$(function() {
	 $("button.btn.btn-primary").on("click",function(){
		 fncUpdateProduct();
	 });		
	
	 $("a[href='#' ]").on("click",function(){
		 $("form")[0].reset();
		 $(self.location).attr("href","/product/listProduct?menu=manage");
	 });
	 
});

</script>
</head>





<body >


<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

<br/>

<form name="detailForm">


<div class="container">
	
		<class="bg-primary text-center"><h1 align="center">��ǰ����</h1></class>
		<br/>
		<hr/>
		<br/>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">




<div class="row">
<input type="hidden" name="prodNo" value="${product.prodNo}"/>
</div>

<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>��ǰ��</strong></div>
			<div class="col-xs-8 col-md-4"><input type="text" name="prodName"
			 class="form-control" value="${product.prodName}"></div>
		</div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>��ǰ������</strong></div>
			<div class="col-xs-8 col-md-4"><input type="text" name="prodDetail" 
			class="form-control" value="${product.prodDetail}"/></div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>��������</strong></div>
			<div class="col-xs-8 col-md-4"><input type="text" name="manuDate" readonly="readonly" 
			class="form-control" value="${product.manuDate}"></div>
				&nbsp;<img src="../images/ct_icon_date.gif" width="15" height="15" 
										onclick="show_calendar('document.detailForm.manuDate',
												document.detailForm.manuDate.value)"/></div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>����</strong></div>
			<div class="col-xs-8 col-md-4"><input type="text" name="price" 	
			class="form-control" value="${product.price}"/></div>
		</div>
		
	
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>��ǰ�̹���</strong></div>
			<div class="col-xs-8 col-md-4"><input type="file" name="file" 
			id="exampleInputFile" value="${product.fileName}" /></div>
			
		</div>
		
		
<hr/>
<br/>

<div class="form-group">
			    	<div class="col-sm-offset-4  col-sm-4 text-right">
			      		<button type="button" class="btn btn-primary"id="myButton"   >���</button>
				  		<a class="btn btn-primary btn" href="#" role="button" id="myButton" >���</a>
			    	</div>
			  	</div>
				
				<br/>

</body>
</html>
