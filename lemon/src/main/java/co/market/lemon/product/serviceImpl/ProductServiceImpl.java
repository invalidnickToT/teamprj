package co.market.lemon.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.member.service.MemberMapper;
import co.market.lemon.product.service.ProductMapper;
import co.market.lemon.product.service.ProductService;
import co.market.lemon.product.service.ProductVO;

public class ProductServiceImpl implements ProductService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> productSelectList() {
		return productSelectList();
	}
	
	@Override
	public ProductVO productSelect(ProductVO vo) {
		return map.productSelect(vo);
	}

	@Override
	public int productInsert(ProductVO vo) {
		return productInsert(vo);
	}

	@Override
	public int productUpdate(ProductVO vo) {
		return productUpdate(vo);
	}

	@Override
	public int productDelete(ProductVO vo) {
		return productDelete(vo);
	}

	@Override
	public ProductVO productLogin(ProductVO vo) {
		return null;
    //이거 하세요 제발 이게뭐죠?
    // vo에도 고쳐주세요 제발
	}

	@Override
	public int productHitUpdate(ProductVO vo) {
		return map.productHitUpdate(vo);
	}

}
