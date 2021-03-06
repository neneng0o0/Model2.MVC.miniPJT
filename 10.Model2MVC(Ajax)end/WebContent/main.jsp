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
	
	<!--  CSS 蓄亜 : 祷郊拭 鉢檎 亜軒澗 薄雌 背衣 :  爽汐坦軒 穿, 板 溌昔-->
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
		
	<!--  焼掘税 鎧遂精 http://getbootstrap.com/getting-started/  凧繕 -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
      <class="lead"><p>PIROGOM</p></class>
      <hr/>
        <h2>食硯 </h2>
        <p>----</p>
         <p>楳差馬室推</p>
     </div>
    </div>

	<!-- 凧繕 : http://getbootstrap.com/css/   : container part..... -->
	<div class="container">
	 <div class="row marketing">
        <div class="col-lg-6">
        <h5>祷郊 革搾惟戚芝郊 丞 紫戚球 鎮君痕井馬奄...</h5>
        <h5>穿端 鎮君 搭析 情薦...</h5>
        
        
        <div class="page-header">
        <h5>切軒壕帖:置重 去系 雌念 戚耕走亜 食奄拭辞左食像</h5>
      </div>
      
				<!-- carousel研 姥失拝 慎蝕 竺舛 -->
				<div style="width: 500px;margin: 100px;">
				<!-- carousel研 紫遂馬奄 是背辞澗 class拭 carousel人 slide 竺舛廃陥. -->
				<!-- carousel澗 働戚馬惟 id研 竺舛背醤 廃陥.-->
				<div id="carousel-example-generic" class="carousel slide" >
				<!-- carousel税 走獣切 -->
				<!-- 走獣切虞壱澗 馬澗汽 ol殿益税 class拭 carousel-indicators研 隔澗陥. -->
				<ol class="carousel-indicators">
				<!-- li澗 戚耕走 鯵呪幻鏑 蓄亜馬壱 data-target精 carousel id研 亜牽轍陥. -->
				<!-- data-slide-to澗 授辞企稽 0採斗 臣虞亜壱 0精 active研 竺舛廃陥. -->
				<!-- 亨備 戚 採歳精 辛芝紺稽 竺舛馬惟 蒸陥. -->
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				</ol>
				<!-- 叔薦 戚耕走 焼戚奴 -->
				<!-- class澗 carousel-inner稽 竺舛馬壱 role精 listbox拭辞 竺舛廃陥. -->
				<div class="carousel-inner" role="listbox">
				<!-- 戚耕走税 鯵呪幻鏑 item聖 幻窮陥. 掻推廃 匂昔闘澗 carousel-indicators税 li 殿益 鯵呪人 item税 鯵呪澗 析帖背醤 廃陥. -->
				<div class="item active">
				<!-- 焼耕走 竺舛- -->
				<img src=""  style="width:100%">
				<!-- 銚芝 竺舛 (持繰 亜管) -->
				<!-- 越切 事精 伊精事 -->
				<div class="carousel-caption" style="color:black;">
				ばばばばばば
				</div>
				</div>
				<div class="item">
				<img src="" style="width:100%">
				<div class="carousel-caption" style="color:black;">
				生焼焼焼
				</div>
				</div>
				</div>
				<!-- 図楕 鉢詞妊 獄動 -->
				<!-- href澗 carousel税 id研 亜牽轍陥. -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<!-- 図楕 鉢詞妊 -->
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				</a>
				<!-- 神献楕 鉢詞妊 獄動 -->
				<!-- href澗 carousel税 id研 亜牽轍陥. -->
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<!-- 神献楕 鉢詞妊 -->
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				</a>
				</div>
				</div>


				<script>
				$(function(){
				// 戚耕走 十虞戚球 珍闘継研 紫遂馬奄 是背辞澗 carousel研 叔楳背醤廃陥.
				$('#carousel-example-generic').carousel({
				// 十軒焼漁 切疑 授発 走尻 獣娃
				// false檎 切疑 授発馬走 省澗陥.
				interval: 1000,
				// hover研 竺舛馬檎 原酔什研 亜閃企檎 切疑 授発戚 誇秩陥.
				pause: "hover",
				// 授発 竺舛, true檎 1 -> 2亜檎 陥獣 1稽 宜焼亜辞 鋼差
				wrap: true,
				// 徹左球 戚坤闘 竺舛 食採(?)
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