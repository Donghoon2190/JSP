package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.TeacherInfoBean;
import service.getTeinfo;

/**
 * Servlet implementation class Fcontroller
 */
@WebServlet("/Fcontroller")
public class Fcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Fcontroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		TeacherInfoBean tib = new TeacherInfoBean();
		tib.setTeCode(id);
		tib.setTePwd(pwd);
		getTeinfo ti = new getTeinfo();
		boolean result = ti.getTeinfo(tib);

		if (tib.getTeLevel()!=null) {
			if (tib.getTeLevel().equals("T")) { tib.setTeLevel("선생");
			}else if (tib.getTeLevel().equals("M")){ tib.setTeLevel("교장"); 
		  }
		}

		if (result) {
			RequestDispatcher rd = request.getRequestDispatcher("loginSucess.jsp");
			request.setAttribute("name", tib.getTeName());
			request.setAttribute("sucode", tib.getTeSubject());
			request.setAttribute("level", tib.getTeLevel());
			request.setAttribute("grade", tib.getTeGrade());
			request.setAttribute("class", tib.getTeClass());
			request.setAttribute("stcount", tib.getStCount());
			
			rd.forward(request, response);
		}else { PrintWriter out = response.getWriter();
			out.print("<h2> 일치하는 정보가 없습니다 </h2>");
		}



	}

}







