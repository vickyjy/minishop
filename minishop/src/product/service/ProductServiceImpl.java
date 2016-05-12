package product.service;

import static fw.JdbcTemplate.getConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dao.ProductDAO;
import product.dao.ProductDAOImpl;
import product.dto.ProductDTO;

public class ProductServiceImpl implements ProductService {

	@Override
	public ArrayList<ProductDTO> productlist(String category) {
		Connection conn = getConnect();
		ProductDAO dao = new ProductDAOImpl();
		ArrayList<ProductDTO> prolist=null;
		try {
			prolist = dao.productlist(conn, category);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return prolist;
	}

	public static void main(String[] args){
		ProductService service= new ProductServiceImpl();
		ArrayList<ProductDTO> dro = service.searchTopProduct();
		System.out.println(dro);
	} 
	
	@Override
	public ArrayList<ProductDTO> searchTopProduct() {
		Connection conn= getConnect();
		ProductDAO dao= new ProductDAOImpl();
		ArrayList<ProductDTO> toplist = null;
		try {
			toplist = dao.searchTopProduct(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return toplist;
	}

	@Override
	public ProductDTO read(String prd_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
