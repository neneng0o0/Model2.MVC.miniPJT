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
	
	<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
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
		
	<!--  �Ʒ��� ������ http://getbootstrap.com/getting-started/  ���� -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
      <class="lead"><p>PIROGOM</p></class>
      <hr/>
        <h2>���� </h2>
        <p>----</p>
         <p>�ູ�ϼ���</p>
     </div>
    </div>

	<!-- ���� : http://getbootstrap.com/css/   : container part..... -->
	<div class="container">
	 <div class="row marketing">
        <div class="col-lg-6">
        <h5>���� �׺���̼ǹ� �� ���̵� �÷������ϱ�...</h5>
        <h5>��ü �÷� ���� ����...</h5>
        
        
     




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