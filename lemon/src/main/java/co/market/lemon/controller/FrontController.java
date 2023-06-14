package co.market.lemon.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.market.lemon.adminpage.command.AdminMypage;
import co.market.lemon.adminpage.command.MemberReportList;
import co.market.lemon.adminpage.command.MemberSelect;
import co.market.lemon.adminpage.command.MemberSelectList;
import co.market.lemon.command.MainCommand;
import co.market.lemon.product.command.ProductInsert;
//co.market.lemon.product.productInsert로 
import co.market.lemon.common.Command;
import co.market.lemon.member.command.AjaxCheckId;
import co.market.lemon.member.command.MemberInsert;
import co.market.lemon.member.command.MemberInsertForm;
import co.market.lemon.member.command.MemberLogin;
import co.market.lemon.member.command.MemberLoginForm;

import co.market.lemon.member.command.MemberLogout;
import co.market.lemon.mypage.command.MemberDelete;
import co.market.lemon.mypage.command.MemberDeleteForm;
import co.market.lemon.mypage.command.MemberUpdate;
import co.market.lemon.mypage.command.MemberUpdateForm;

import co.market.lemon.mypage.command.Mypage;

import co.market.lemon.notice.command.noticeInsertForm;
import co.market.lemon.notice.command.noticeSelect;

import co.market.lemon.product.command.ProductInsertForm;
import co.market.lemon.product.command.ProductList;
import co.market.lemon.product.command.ProductUpdate;
import co.market.lemon.product.command.ProductUpdateForm;
import co.market.lemon.product.command.ProductSelect;


/**
 * Servlet implementation class FrontController
 */

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		super();
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		//공통부분
		map.put("/main.do", new MainCommand());
		map.put("/memberInsertForm.do", new MemberInsertForm());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/ajaxCheckId.do", new AjaxCheckId());

		//상희zone
		map.put("/memberLogout.do", new MemberLogout());
		map.put("/adminMypage.do", new AdminMypage());
		map.put("/memberSelectList.do", new MemberSelectList());
		map.put("/memberReportList.do", new MemberReportList());
		map.put("memberSelect.do", new MemberSelect());


    	//혜련zone
		map.put("/productList.do", new ProductList());
		map.put("/productSelect.do", new ProductSelect());
		map.put("/productInsertForm.do", new ProductInsertForm());
		map.put("/productInsert.do", new ProductInsert());

		map.put("/productUpdateForm.do", new ProductUpdateForm());
		map.put("/productUpdate.do", new ProductUpdate());
	


		//송이zone
		map.put("/mypage.do", new Mypage());  //마이페이지
		map.put("/memberUpdateForm.do", new MemberUpdateForm());  //수정 폼 호출
		map.put("/memberUpdate.do", new MemberUpdate());  //수정 실행
		map.put("/memberDeleteForm.do", new MemberDeleteForm());  //삭제 폼 호출
		map.put("/memberDelete.do", new MemberDelete());  //삭제 실행

  

		
		
		//주현이 영역~~~ notice
		map.put("/noticeInsertForm.do", new noticeInsertForm());
		map.put("/noticeSelect.do", new noticeSelect());



		//나리zone
		
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8"); 

		String uri = request.getRequestURI(); 
		String contextPath = request.getContextPath(); 
		String page = uri.substring(contextPath.length()); 

		Command command = map.get(page); 
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) { 

			
			if (viewPage.startsWith("Ajax:")) { 
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5)); 
				return;
			}

			viewPage = viewPage + ".tiles";

			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response); 
		} else { 
			response.sendRedirect(viewPage); 
		}
	}

}
