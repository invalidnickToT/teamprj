package co.market.lemon.reply.service;

import java.util.List;

public interface ReplyService {
	
	List<ReplyVO> replyList(int productId);
	
	ReplyVO selectReply(int productId);
	
	int insertReply(ReplyVO vo);
	
	int updateReply(ReplyVO vo);
	
	int deleteReply(ReplyVO vo);

}
