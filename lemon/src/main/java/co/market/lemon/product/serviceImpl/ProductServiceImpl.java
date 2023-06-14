package co.market.lemon.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.member.service.MemberMapper;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;

public class ProductServiceImpl implements ProductService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);

	public List<ProductVO> productSelectList() {
		// TODO Auto-generated method stub
		return productSelectList();
	}

	public ProductVO productSelect(ProductVO vo) {
		// TODO Auto-generated method stub
		return productSelect(vo);
	}

	public int productInsert(ProductVO vo) {
		// TODO Auto-generated method stub
		return productInsert(vo);
	}

	public int productUpdate(ProductVO vo) {
		// TODO Auto-generated method stub
		return productUpdate(vo);
	}

	public int productDelete(ProductVO vo) {
		// TODO Auto-generated method stub
		return productDelete(vo);
	}

	public ProductVO productLogin(ProductVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
