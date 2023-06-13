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

import co.market.lemon.command.MainCommand;
import co.market.lemon.common.Command;
import co.market.lemon.member.command.AjaxCheckId;
import co.market.lemon.member.command.MemberInsert;
import co.market.lemon.member.command.MemberInsertForm;
import co.market.lemon.member.command.MemberLogin;
import co.market.lemon.member.command.MemberLoginForm;
import co.market.lemon.mypage.command.Mypage;

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
		map.put("/main.do", new MainCommand());
		map.put("/memberInsertForm.do", new MemberInsertForm());
		map.put("/memberLoginForm.do", new MemberLoginForm());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/ajaxCheckId.do", new AjaxCheckId());
		map.put(" ㅅㄷㄴㅅㅅㄴㅅㄱ", null);
		
		map.put("/mypage.do", new Mypage());
		
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
