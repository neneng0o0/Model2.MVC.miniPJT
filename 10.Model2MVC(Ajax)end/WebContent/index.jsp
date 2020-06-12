<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// �α��ν� Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	
	
	<style>
	
	 @font-face { font-family: 'TmonMonsori'; 
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/TmonMonsori.woff') 
	format('woff'); font-weight: normal; font-style: normal; }
	
	@font-face { font-family: 'GmarketSansMedium'; 
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
 	format('woff'); font-weight: normal; font-style: normal; }

	
	
	
	
	body {
		background-color: #edf2f4 ; 
		 }
	.txt{
		font-family: 'GmarketSansMedium';
		color:#05668d;
				}
	
	.glyphicon-flash { 
	 color: #ffe066; 
	 font-size: 20px; 
	} 
	
	
	
	
	form[name='pp']
	
	h1 {color:#05668d;}
		
	#top{background-color:#1d3557; margin:0}
	
	#topp { color:#edf2f4;}
	.navbar-default  { color:#edf2f4;}
	.navbar-link { color:#edf2f4;}
	
	body h1 { 
			color:#3d405b;
			font-family: 'TmonMonsori';
			}
	
	
	
	.myButton {
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
	
	.myButton:hover {
	background-color:#cca6cc;
	}
	
	.myButton:active {
	position:relative;
	top:1px;
	}
	
	.btn-custom {
	  background-color: hsl(216, 9%, 72%) !important;
	  background-repeat: repeat-x;
	  border-radius:10px;
	  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#b1b6be", endColorstr="#b1b6be");
	  background-image: -khtml-gradient(linear, left top, left bottom, from(#b1b6be), to(#b1b6be));
	  background-image: -moz-linear-gradient(top, #b1b6be, #b1b6be);
	  background-image: -ms-linear-gradient(top, #b1b6be, #b1b6be);
	  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #b1b6be), color-stop(100%, #b1b6be));
	  background-image: -webkit-linear-gradient(top, #b1b6be, #b1b6be);
	  background-image: -o-linear-gradient(top, #b1b6be, #b1b6be);
	  background-image: linear-gradient(#b1b6be, #b1b6be);
	  border-color: #b1b6be #b1b6be hsl(216, 9%, 72%);
	  color: #333 !important;
	  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.00);
	  -webkit-font-smoothing: antialiased;
	  }
	}

	</style>
   	
   	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= ȸ�������� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('sign up')").on("click" , function() {
				self.location = "/user/addUser"
				});
			});		
		//============= �α��� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('log in')").on("click" , function() {
				self.location = "/user/login"
				});
			});
		//============= ��ǰ�˻� ȭ���̵� ============= �߰��߰��߰�!!������ ���� ����/ �̵� oK 
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('��ǰ�˻�')").on("click" , function() {
				self.location = "/product/listProduct.do?menu=search"
				});
			});
			
	</script>	
</head>


	<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar navbar-default">
        <div class="container" id="top">

        	<a class="navbar-brand" id="topp" href="#">::Model2 MVC Shop::</a> <!-- ��� �� �귣�� ����  -->
			
			<!-- toolBar Button Start //////////////////////// -->
			<div class="navbar-header">
			    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			</div>
			<!-- toolBar Button End //////////////////////// -->
			
			<div  class="navbar-text navbar-right" id="target">
			<a href="#" class="navbar-link">sign up</a> &nbsp;&nbsp;
			<a href="#" class="navbar-link">log in</a></div >
			
			   		
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- �ٴܷ��̾ƿ�  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu ���� Start /////////////////////////////////////=========���� �޴� ��-->     	
			<div class="col-md-3">
		        
		       	<!--  ȸ������ ��Ͽ� ���� -->
				<div class="btn-custom">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-flash"></i><div class="txt" align="center" > ȸ������ </div> <!-- ������! -->
         			</div>
         			<!--  ȸ������ ������ -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#" style="text-decoration:line-through">
						 	<div align="center">����������ȸ</div></a> 
						 </li>
						 <li class="list-group-item">
						 	<a href="#" style="text-decoration:line-through">
						 	<div align="center">ȸ��������ȸ</div></a> 
						 </li>
					</ul>
		        </div>
               
               
				 <div class="btn-custom">
					<div class="panel-heading">
							<i class="glyphicon glyphicon-flash"></i> <div class="txt" align="center">�ǸŻ�ǰ����</div>
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#" style="text-decoration:line-through">
						 	<div align="center">�ǸŻ�ǰ���</div></a> 
						 </li>
						 <li class="list-group-item">
						 	<a href="#" style="text-decoration:line-through">
						 	<div align="center">�ǸŻ�ǰ����</div></a> 
						 </li>
					</ul>
		        </div>
               
               
				<div class="btn-custom">
					<div class="panel-heading">
							<i class="glyphicon glyphicon-flash "></i><div class="txt" align="center"> ��ǰ����</div>
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#">
						 <div align="center">��ǰ�˻�</div></a></li>
						  <li class="list-group-item">
						  	<a href="#" style="text-decoration:line-through">
						  	<div align="center">�����̷���ȸ</div></a> 
						  </li>
						 <li class="list-group-item">
						 	<a href="#" style="text-decoration:line-through">
						 	<div align="center">�ֱٺ���ǰ</div></a> 
						 </li>
					</ul>
				</div>
				
			</div>
			<!--  Menu ���� end /////////////////////////////////////-->   
			
	
			
			






	 	 	<!--  Main start /////////////////////////////////////===============�����ڽ�!�ε��� ������ �κ�-->   		
	 	 	<div class="col-md-9">
				<div style="background:transparent !important" class="jumbotron">
					<div align="center" >
			  		<h1>PIROGOM</h1>
			  		<form name="pp"><p></p>
			  		<p>���ϸ���</p>
			  		<p>�ǰ��ϴ�</p>
			  		<p>-0-</p>
			  		</div>
			  		<br/><hr/><br/>
			  		
			  		<div class="text-center">
			  			<a class="myButton" href="#" role="button">sign up</a>
			  			<a class="myButton" href="#" role="button">log in </a>
			  			

			  		</div>
			  	
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- �ٴܷ��̾ƿ�  end /////////////////////////////////////-->
		
	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->

</body>

</html>