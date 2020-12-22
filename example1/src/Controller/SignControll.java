package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.MemberInfoBean;
import Service.CheckService;

@WebServlet("/SignControll")
public class SignControll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SignControll() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		MemberInfoBean mib = new MemberInfoBean();
		mib.setMeId(request.getParameter("id"));
		mib.setMePw(request.getParameter("pass"));
		mib.setMeName(request.getParameter("name"));
		mib.setMeEmail(request.getParameter("email"));
		
		CheckService cs = new CheckService();
		String result = cs.enterance(2, null,mib);
		
		if (result=="yes") {
			PrintWriter out = response.getWriter();
			out.print("<script> alert('회원가입이 성공했습니다.') </script>");
			out.print("<script> location.href='index.jsp' </script>");
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script> alert('회원가입이 실패했습니다.') </script>");
			out.print("<script> location.href='index.jsp' </script>");
		}
	}
}











