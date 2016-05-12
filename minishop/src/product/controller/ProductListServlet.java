package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.dto.ProductDTO;
import product.service.ProductService;
import product.service.ProductServiceImpl;

@WebServlet(name = "prdlist", urlPatterns = { "/prdlist.do" })
public class ProductListServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException{
		String category = req.getParameter("category");
		String pathurl = req.getParameter("pathurl");
		
		String forwardview= "";//forward될 view
		ProductService service = new ProductServiceImpl();
		//상품목록
		ArrayList<ProductDTO> prdlist
						= service.productlist(category);
		req.setAttribute("prdlist", prdlist);
		
		if(category==null){
			forwardview="/layout/indexLayout.jsp";
			ArrayList<ProductDTO> toplist = service.searchTopProduct();
			req.setAttribute("toplist", toplist);

		}else{
			req.setAttribute("pathurl", pathurl);
			forwardview="/layout/mainLayout.jsp";
		}
		
		RequestDispatcher rd = 
				req.getRequestDispatcher(forwardview);
		rd.forward(req, res);

		
	}

}
