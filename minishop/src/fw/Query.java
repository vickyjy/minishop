package fw;

public class Query {
	public static String PRODUCT_LIST = "select * from tb_product";
	public static String PRODUCT_LIST_CATEGORY = "select * from tb_product where category_no=?";
	public static String BEST_SELLECTION = "select rownum, prd_nm, img_org_file_nm "
			+ "from(select p.prd_nm, o.qty, img_org_file_nm "
			+ "from tb_order_product o, tb_product p "
			+ "where o.prd_no=p.prd_no "
			+ "order by qty desc) "
			+ "where rownum<9";
}