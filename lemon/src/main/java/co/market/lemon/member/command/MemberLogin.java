package co.market.lemon.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;



public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//로그인 처리
				MemberService ms = new MemberServiceImpl();
				MemberVO vo = new MemberVO();
				HttpSession session = request.getSession();   
    
				vo.setMemberId(request.getParameter("memberId"));
				vo.setMemberPw(request.getParameter("memberPw"));

				vo = ms.memberLogin(vo);
				if(vo != null) {    
					session.setAttribute("id", vo.getMemberId()); 
					session.setAttribute("name", vo.getMemberName());
					session.setAttribute("grade", vo.getMemberGrade());
					return "main/main";
				} else {
					request.setAttribute("message", "아이디 또는 비밀번호가 틀렸습니다.");
					return "member/memberLoginMessage";
				}

		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		HttpSession session = request.getSession(); 
		
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		
		vo = ms.memberLogin(vo);
		if(vo != null) {    //로그인 성공했을 때
			session.setAttribute("id", vo.getMemberId()); 
			session.setAttribute("name", vo.getMemberName());
			session.setAttribute("grade", vo.getMemeberGrade());
			session.setAttribute("pw", vo.getMemberPw());
			
			request.setAttribute("message", vo.getMemberName()+"님 환영합니다.");
		} else {
			request.setAttribute("message", "아이디 또는 비밀번호가 틀렸습니다.");
		}
		return "member/memberMessage";

	}

}
