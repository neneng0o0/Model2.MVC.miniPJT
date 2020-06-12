<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<title>��ǰ �����ȸ</title>

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
   
   
   <!-- jQuery UI toolTip ��� CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip ��� JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript" src="../javascript/calendar.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	
	
	<style>
	  body {
          padding-top : 50px;
      }
  </style>
	
	
	
	
	
	
	
  <script type="text/javascript">

	function fncGetProductList(currentPage) {
		//document.getElementById("currentPage").value = currentPage;
		$("#currentPage").val(currentPage)
   		$("form").attr("method","POST").attr("action","/product/listProduct?menu="+"${param.menu}").submit();
		}
	
	$(function(){
		 $( "button.btn.btn-default" ).on("click" , function() {
			fncGetProductList(1);										
		});
		
		//�߰��Ѱ�
			
	});	
	
	$(function() {
		
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$( "td:nth-child(2)" ).on("click" , function() {
			 self.location ="/product/getProduct?prodNo="+$(this).text().trim();
		});
					
	});	
	
	 $(function() {
		 
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(  "td:nth-child(5) > i" ).on("click" , function() {

					var prodNo = $(this).next().val();
				
					$.ajax( 
							{
								url : "/product/json/getProduct/"+prodNo ,
								method : "GET" ,
								dataType : "json" ,
								headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								},
								success : function(JSONData , status) {

									var displayValue = "<h6>"
																+"��ǰ��ȣ : "+JSONData.prodNo+"<br/>"
																+"�� ǰ �� : "+JSONData.prodName+"<br/>"
																+"��   �� : "+JSONData.price+"<br/>"
																+"������� : "+JSONData.regDate+"<br/>"
																+"</h6>";
									$("h6").remove();
									$( "#"+prodNo+"" ).html(displayValue);
								}
						});
						////////////////////////////////////////////////////////////////////////////////////////////
					
			});
			
			//==> userId LINK Event End User ���� ���ϼ� �ֵ��� 
			$( ".ct_list_pop td:nth-child(3)" ).css("color" , "red");
			$("h7").css("color" , "red");
			
			//==> �Ʒ��� ���� ������ ������ ??
			$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");
		});	
	
	
	
	
	
		
		
</script>
</head>

<body >

<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
   	
   	


<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header text-info">
	        <h3>

				<c:if test="${param.menu=='manage'}">��ǰ ����	</c:if>
				
				<c:if test="${param.menu=='search'}">��ǰ �����ȸ</c:if>		
				   </h3>
	    </div>
	    
	    
	    
	    
	     <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
		    	</p>
		    </div>
		    
		    <div class="col-md-6 text-right">
			    <form class="form-inline" name="detailForm">
			    
				  <div class="form-group">
				    <select class="form-control" name="searchCondition" >                   
                            <option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>��ǰ��</option>
							<option value="1" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>��ǰ����</option>
					</select>
				  </div>
	     <div class="form-group">
				    <label class="sr-only" for="searchKeyword">�˻���</label>
				    <input type="text" class="form-control" id="searchKeyword" name="searchKeyword" 
				    			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				  </div>
				  
				  <button type="button" class="btn btn-default">�˻�</button>
				  
				  <!-- PageNavigation ���� ������ ���� ������ �κ� -->
				  <input type="hidden" id="currentPage" name="currentPage" value="${resultPage.currentPage}"/>
				  
				</form>
	    	</div>
	    	
		</div>
		
		
		




<table class="table table-hover table-striped" >

  <thead>
          <tr>
            <th align="center">No</th>
            <th align="left" >��ǰ��</th>
            <th align="left">����</th>
            <th align="left">������ȸ</th>
          </tr>
        </thead>



	    
	 <c:set var="i" value="0" />
		  <c:forEach var="product" items="${list}">
			<c:set var="i" value="${ i+1 }" />
			<tr>
			  <td align="center">${ i }</td>
			  <td align="left"  title="Click : ��ǰ���� Ȯ��">
                <c:if test="${param.menu=='manage'}">
				    <a href="/product/getProduct?prodNo=${product.prodNo}&menu=manage">${product.prodName}</a>
                </c:if>
                <c:if test="${param.menu=='search'}">
				    <a href="/product/getProduct?prodNo=${product.prodNo}&menu=search">${product.prodName}</a>
                </c:if>  
              </td>
			  <td align="left">${product.price}</td>
			  <td align="left">
              </td>
			  <td align="left">
			  	<i class="glyphicon glyphicon-ok" id= "${product.prodNo}"></i>
			  	<input type="hidden" value="${product.prodNo}">
			  </td>
			</tr>
          </c:forEach>
        
        </tbody>
      
      </table>    
	    
	    
	   </div>
 	<!--  ȭ�鱸�� div End /////////////////////////////////////-->
 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
</body>

</html> 
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	   