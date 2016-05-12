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
			<!-- * �⺻ -->
			<input name="r_ctseq" type="hidden" value="11" />

			<!-- * pagingInput -->
			<input name="r_page" type="hidden" value="1" /> <input
				name="r_orderby" type="hidden" value="" /> <input
				name="h_orderbyclass" type="hidden" value="" /> <input
				name="r_prviewtype" type="hidden" value="" />





			<!-- title -->
			<h2>Supplies</h2>
			<!---------------- ��ǰī�װ� �� �з� START -------------->
			<div class="categoryGroupArea">
				<dl class="catgrGroup">
					<dt>
						<a href="#"
							onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=11&r_limitrow=20' )">�巳/���</a>
					</dt>
					<dd>
						<ul>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=15&r_limitrow=20' )">����
									���ձ�</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=16&r_limitrow=20' )">�÷�
									������</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=18&r_limitrow=20' )">�����Ͼ
									�ý���</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=17&r_limitrow=20' )">���
									������</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=13&r_limitrow=20' )">������
									�÷� ���ձ�/�����</a></li>

							<li><a href="#"
								onclick="formGetSubmit( '/commerce/foffice/product/productlist.lime', 'r_ctseq=14&r_limitrow=20' )">������
									���ձ�/�����</a></li>

						</ul>
					</dd>
				</dl>
			</div>
			<!-- categoryGroupArea : ��ǰī�װ� �� �з� END -->

			<!---------------- ��ǰ ��ȸ ��� ����Ʈ ���� ���� -------------->

			<div class="goodsListArea">
				<!-- ��ȸ ��� �޼��� �� ���� -->
				<div class="goodsListHead">
					<p>
						��<span><%=size %></span> ���� ��ǰ�� �ֽ��ϴ�.
					</p>
					<ul>
						<li class="first selected"><a href="#"
							onclick="dataSort( 1, 'PR_INDATE desc' ); return false;">��ϼ�</a></li>
						<li class=""><a href="#"
							onclick="dataSort( 2, 'NVL( PRLP_SALEPRICE1, 0) desc' ); return false;">�������ݼ�</a></li>
						<li class=""><a href="#"
							onclick="dataSort( 3, 'NVL( PRLP_SALEPRICE1, 0) asc' ); return false;">�������ݼ�</a></li>
						<li class=""><a href="#"
							onclick="dataSort( 4, 'PR_NAME asc' ); return false;">��ǰ���</a></li>
						<li class="typeGallery"><a href="#"
							onclick="dataViewType( 2 );return false;"> <img
								src="/minishop/images/icn_gllry_2.gif" alt="������ ��" />
						</a></li>
						<li class="typeList"><a href="#"
							onclick="dataViewType( 1 );return false;"> <img
								src="/minishop/images/icn_list_2.gif" alt="����Ʈ ��" />
						</a></li>
						<li class="last"><select name="r_limitrow"
							onchange="pageLimitRow();" title="����">
								<option value="10">10��</option>
								<option value="20" selected='selected'>20��</option>
								<option value="50">50��</option>
								<option value="100">100��</option>


						</select></li>
					</ul>
				</div>
			</div>
			<div class="boardAreaList">
				<!-- ��ǰ����Ʈ [����Ʈ ��] ���� -->

				<!-- ��ǰ����Ʈ [����Ʈ ��] �� -->

				<!-- ��ǰ����Ʈ [������ ��] ���� -->

				<%for(int i=0;i<size;i++){
					ProductDTO pro= prdlist.get(i);
				 %>
				<!-- *��ǰ ������� -->
				<ul class="goodsAreaG">
					<li><a href="#" class="goodsLink"
						onclick="formGetSubmit( '/commerce/foffice/product/product.lime', 'r_prcode=G4157_F0002_X0004_K0040' )">
							<img src="/minishop/images/product/<%=pro.getImg_gen_file_nm()%>"
							alt="��ǰ" class="photo" /><br /> <span class="proPrice1"><%=pro.getPrd_nm() %></span>
					</a><br /> <span class="proPrice2"><%= pro.getSell_prc_unit()%>��</span>
					

					<ul class="bIcon">


						<li><a href="#"
							onclick="basketIn( 'G4157_F0002_X0004_K0040' );return false;"><img
								src="/minishop/images/bcon_cart.gif" alt="��ٱ���" /></a></li>
						<li><a href="#" onclick="imageZoom( '1032' );"><img
								src="/minishop/images/bcon_zoom.gif" alt="Ȯ�뺸��" /></a></li>

					</ul>
					</li>
					<%} %>
				</ul>

			</div>
			
			<!---------------- ��ǰ ��ȸ ��� ����Ʈ ���� �� -------------->
		</form>
		

	</div>
</body>
</html>