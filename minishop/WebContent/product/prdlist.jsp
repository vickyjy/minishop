<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="product.dto.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link type="text/css" href="/minishop/common/css/master.css"
	rel="stylesheet" media="screen,print" />
<link type="text/css" href="/minishop/common/css/print.css"
	rel="stylesheet" media="print" />
<link type="text/css" href="/minishop/common/css/mall.css"
	rel="stylesheet" media="screen,print" />
	
<script type="text/javascript">
	function formGetSubmit(link, limit) {
		alert(link);
	}
</script>
<%
	ArrayList<ProductDTO> prdlist = (ArrayList<ProductDTO>)request.getAttribute("prdlist"); 
	int size= prdlist.size(); 
%>
</head>
<body>
	<div class="lyt-main">
		<form action="/prdlist.do" method="get" name="frm">
			<!-- * 기본 -->
			<input name="r_ctseq" type="hidden" value="11" />

			<!-- * pagingInput -->
			<input name="r_page" type="hidden" value="1" /> <input
				name="r_orderby" type="hidden" value="" /> <input
				name="h_orderbyclass" type="hidden" value="" /> <input
				name="r_prviewtype" type="hidden" value="" />





			<!-- title -->
			<h2>Supplies</h2>
			<!---------------- 상품카테고리 소 분류 START -------------->
			<div class="categoryGroupArea">
				<dl class="catgrGroup">
					<dt>
						<a href="#"
							onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=11&r_limitrow=20' )">드럼/토너</a>
					</dt>
					<dd>
						<ul>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=15&r_limitrow=20' )">소형
									복합기</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=16&r_limitrow=20' )">컬러
									프린터</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=18&r_limitrow=20' )">엔지니어링
									시스템</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=17&r_limitrow=20' )">흑백
									프린터</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=13&r_limitrow=20' )">디지털
									컬러 복합기/복사기</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=14&r_limitrow=20' )">디지털
									복합기/복사기</a></li>

						</ul>
					</dd>
				</dl>
			</div>
			<!-- categoryGroupArea : 상품카테고리 소 분류 END -->

			<!---------------- 상품 조회 결과 리스트 영역 시작 -------------->

			<div class="goodsListArea">
				<!-- 조회 결과 메세지 및 순서 -->
				<div class="goodsListHead">
					<p>
						총<span><%=size %></span> 개의 상품이 있습니다.
					</p>
					<ul>
						<li class="first selected"><a href="#"
							onclick="dataSort( 1, 'PR_INDATE desc' ); return false;">등록순</a></li>
						<li class=""><a href="#"
							onclick="dataSort( 2, 'NVL( PRLP_SALEPRICE1, 0) desc' ); return false;">높은가격순</a></li>
						<li class=""><a href="#"
							onclick="dataSort( 3, 'NVL( PRLP_SALEPRICE1, 0) asc' ); return false;">낮은가격순</a></li>
						<li class=""><a href="#"
							onclick="dataSort( 4, 'PR_NAME asc' ); return false;">상품명순</a></li>
						<li class="typeGallery"><a href="#"
							onclick="dataViewType( 2 );return false;"> <img
								src="/minishop/images/icn_gllry_2.gif" alt="갤러리 형" />
						</a></li>
						<li class="typeList"><a href="#"
							onclick="dataViewType( 1 );return false;"> <img
								src="/minishop/images/icn_list_2.gif" alt="리스트 형" />
						</a></li>
						<li class="last"><select name="r_limitrow"
							onchange="pageLimitRow();" title="개수">
								<option value="10">10개</option>
								<option value="20" selected='selected'>20개</option>
								<option value="50">50개</option>
								<option value="100">100개</option>


						</select></li>
					</ul>
				</div>
			</div>
			<div class="boardAreaList">
				<!-- 상품리스트 [리스트 형] 시작 -->

				<!-- 상품리스트 [리스트 형] 끝 -->

				<!-- 상품리스트 [갤러리 형] 시작 -->

				<%for(int i=0;i<size;i++){
					ProductDTO pro= prdlist.get(i);
				 %>
				<!-- *상품 있을경우 -->
				<ul class="goodsAreaG">
					<li><a href="#" class="goodsLink"
						onclick="formGetSubmit( '/commerce/foffice/product/product.lime', 'r_prcode=G4157_F0002_X0004_K0040' )">
							<img src="/minishop/images/product/<%=pro.getImg_gen_file_nm()%>"
							alt="상품" class="photo" /><br /> <span class="proPrice1"><%=pro.getPrd_nm() %></span>
					</a><br /> <span class="proPrice2"><%= pro.getSell_prc_unit()%>원</span>
					

					<ul class="bIcon">


						<li><a href="#"
							onclick="basketIn( 'G4157_F0002_X0004_K0040' );return false;"><img
								src="/minishop/images/bcon_cart.gif" alt="장바구니" /></a></li>
						<li><a href="#" onclick="imageZoom( '1032' );"><img
								src="/minishop/images/bcon_zoom.gif" alt="확대보기" /></a></li>

					</ul>
					</li>
					<%} %>
				</ul>

			</div>
			
			<!---------------- 상품 조회 결과 리스트 영역 끝 -------------->
		</form>
		

	</div>
</body>
</html>