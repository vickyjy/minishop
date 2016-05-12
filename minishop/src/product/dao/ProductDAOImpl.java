package product.dao;

import static fw.Query.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dto.ProductDTO;

public class ProductDAOImpl implements ProductDAO {

	@Override
	public ArrayList<ProductDTO> productlist(Connection conn, String category)
			throws SQLException {
		ArrayList<ProductDTO> prolist = new ArrayList<ProductDTO>();
		String sql="";
		PreparedStatement ptmt=null;
		if(category==null){
			sql=PRODUCT_LIST;
			ptmt = conn.prepareStatement(sql);
		}else{
			sql=PRODUCT_LIST_CATEGORY;
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, category);
		}
	
		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			ProductDTO dto = new ProductDTO(rs.getString(1), rs.getString(2),
					rs.getString(3), rs.getString(4), rs.getInt(5),
					rs.getString(6), rs.getString(7), rs.getString(8),
					rs.getString(9), rs.getString(10), rs.getString(11),
					rs.getString(12), rs.getString(13), rs.getString(14));
			
			prolist.add(dto);
		}

		return prolist;
	}

	@Override
	public ArrayList<ProductDTO> searchTopProduct(Connection conn)
			throws SQLException {
		ArrayList<ProductDTO> toplist = new ArrayList<ProductDTO>();
		PreparedStatement ptmt = conn.prepareStatement(BEST_SELLECTION);
		ResultSet rs = ptmt.executeQuery();
		while(rs.next()){
			ProductDTO dto = new ProductDTO(rs.getString(2),rs.getString(3));
			toplist.add(dto);
		}

		return toplist;
	}

	@Override
	public ProductDTO read(Connection conn, String prd_no) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
