package co.market.lemon.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.product.service.ProductMapper;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;

public class ProductServiceImpl implements ProductService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> productSelectList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public ProductVO productSelect(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productSelect(vo);
	}

	@Override
	public int productInsert(ProductVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int productUpdate(ProductVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int productDelete(ProductVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ProductVO productLogin(ProductVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int productHitUpdate(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productHitUpdate(vo);
	}

}
