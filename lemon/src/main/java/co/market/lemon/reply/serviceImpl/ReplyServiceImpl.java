package co.market.lemon.reply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.market.lemon.common.DataSource;
import co.market.lemon.reply.service.ReplyMapper;
import co.market.lemon.reply.service.ReplyService;
import co.market.lemon.reply.service.ReplyVO;

public class ReplyServiceImpl implements ReplyService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ReplyMapper map = sqlSession.getMapper(ReplyMapper.class);

	@Override
	public List<ReplyVO> replyList(int productId) {
		// TODO Auto-generated method stub
		return map.replyList(productId);
	}

	@Override
	public ReplyVO selectReply(int productId) {
		// TODO Auto-generated method stub
		return map.selectReply(productId);
	}

	@Override
	public int insertReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.insertReply(vo);
	}

	@Override
	public int updateReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.updateReply(vo);
	}

	@Override
	public int deleteReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.deleteReply(vo);
	}

}
