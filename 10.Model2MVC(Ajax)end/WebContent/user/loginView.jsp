<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html lang="ko">
	
<head>

<meta charset="EUC-KR">
	



	
	

	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
    	 body >  div.container{ 
        	border: 3px solid #457b9d;
        	border-radius:10px;
            margin-top: 10px;
            width: 960px;
        }
        
      #top {background-color:#1d3557;
      	}
      #brandName { color:#edf2f4;}
        
        
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

 @font-face { font-family: 'TmonMonsori'; 
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/TmonMonsori.woff') 
	format('woff'); font-weight: normal; font-style: normal; }    
        
        h2 { font-family: 'TmonMonsori';}
        
        
        
   img {
display: block;
margin-top: 45px;
margin-left: auto;
margin-right: auto;
}     
 
  </style>
  
  
  
  	<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
    
    <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

		//============= "로그인"  Event 연결 =============
		$( function() {
			
			$("#userId").focus();
			
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("button").on("click" , function() {
				var id=$("input:text").val();
				var pw=$("input:password").val();
				
				if(id == null || id.length <1) {
					alert('ID 를 입력하지 않으셨습니다.');
					$("#userId").focus();
					return;
				}
				
				if(pw == null || pw.length <1) {
					alert('패스워드를 입력하지 않으셨습니다.');
					$("#password").focus();
					return;
				}
				
				$("form").attr("method","POST").attr("action","/user/login").attr("target","_parent").submit();
			});
		});	
		
		
		//============= 회원원가입화면이동 =============
		$( function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		
		////////////////////////
	



		
	/////////////////////	



		
		
	</script>		
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
        <div class="container" id="top">
        	<a class="navbar-brand" href="/index.jsp" id="brandName">::Model2 MVC Shop::</a>
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->	
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		<!--  row Start /////////////////////////////////////-->
		<div class="row">
		
			<div class="col-md-6">

					<img src="/images/logo-spring.png" class="img-rounded" width="100%" /> <!-- 이미지 센터 맞추고싶다..고통 -->
			
			</div>
	   	 	
	 	 	<div class="col-md-6">
	 	 	
		 	 	<br/><br/>
				
				<div class="jumbotron">	 	 	
		 	 		<h2 class="text-center">LOG IN</h2>

			        <form class="form-horizontal">
		  
					  <div class="form-group">
					    <label for="userId" class="col-sm-4 control-label">I &nbsp;D</label>
					    <div class="col-sm-6">
					      <input type="text" class="form-control" name="userId" id="userId"  placeholder="아이디" >
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="password" class="col-sm-4 control-label">PASSWORD</label>
					    <div class="col-sm-6">
					      <input type="password" class="form-control" name="password" id="password" placeholder="패스워드" >
					    </div>
					  </div>
					  
					  <!-- ================================로그인 /회원관리 버튼 나란히 만들기...세로정렬 ㄴㄴ -->
					 
						
					   <!--   <div class="col-sm-offset-4 col-sm-6 text-center"> -->
					     <div class="text-center"> <!-- col-sm-offset-4 col-sm-6 들어가면 버튼이 세로정렬 -->
					      <a class="myButton" href="#" role="button">sign up</a>
					      <button type="button" class="myButton" >log in</a>  <!-- 버튼타입을 수정하면 로그인 연결이 안되고 그냥 놔두자니 고통스러움ㅠ -->
					    </div>
					    
					 
 
 
 
 

					    
					    
					    
				
					   
					    </form>
					  </div>
			
					</form>
			   	 </div>
			
			</div>
			
  	 	</div>
  	 	<!--  row Start /////////////////////////////////////-->
  	 	
 	</div>
 	<!--  화면구성 div end /////////////////////////////////////-->

</body>

</html>