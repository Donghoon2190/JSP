package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.StoreInfoBean;
import Service.StoreService;

/**
 * Servlet implementation class StoreReg
 */
@WebServlet("/StoreReg")
public class StoreReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreReg() {
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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		StoreInfoBean sib = new StoreInfoBean();
		
		sib.setStoreName(request.getParameter("name"));
		sib.setCaCode(request.getParameter("foods"));
//		sib.setStoreCode(request.getParameter("name"));
		sib.setStoreAdd(request.getParameter("add"));
		sib.setStoreTel(request.getParameter("tel"));
		
		System.out.println(sib.getCaCode());
		System.out.println(sib.getStoreName());
		System.out.println(sib.getStoreAdd());
		System.out.println(sib.getStoreTel());
		
		StoreService ss = new StoreService();
		boolean result = ss.enterance(1, sib);
		
		if (result) {
			RequestDispatcher rd = request.getRequestDispatcher("alert.jsp");
			request.setAttribute("result", 1);
			request.setAttribute("value", "가게 등록 요청을 성공했습니다.");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("alert.jsp");
			request.setAttribute("result", 1);
			request.setAttribute("value", "가게 등록 요청이 실패했습니다.");
			rd.forward(request, response);
		}
	}

}













