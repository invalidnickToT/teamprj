package co.market.lemon.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.common.Command;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;
import co.market.lemon.product.serviceImpl.ProductServiceImpl;

public class ProductUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService ps = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductInfo(request.getParameter("productInfo"));
		vo.setProductPrice(Integer.valueOf("productPrice"));
		vo.setProductTitle(request.getParameter("productTitle"));
		vo.setProductSubject(request.getParameter("productSubject"));
		vo.setProductState(request.getParameter("productState"));

		int n = ps.productUpdate(vo);

		if (n != 0)
			request.setAttribute("message", "수정이 완료되었습니다.");
		else
			request.setAttribute("message", "수정에 실패했습니다.");

		return "product/productMessage";
	}

}
