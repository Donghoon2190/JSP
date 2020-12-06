package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.FoodInfoBean;
import Service.FoodsService;

/**
 * Servlet implementation class getFoodsInfo
 */
@WebServlet("/GetFoodsInfo")
public class GetFoodsInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetFoodsInfo() {
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
		
		ArrayList<FoodInfoBean> list = new ArrayList<FoodInfoBean>();
		
		FoodsService fs = new FoodsService();
		fs.enterance(1,list);
		
		if (list.get(0).getFoComment()!=null) {
			RequestDispatcher rd = request.getRequestDispatcher("MainRank.jsp");
			request.setAttribute("list", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("alert.jsp");
			request.setAttribute("result", 1);
			request.setAttribute("value", "데이터를 불러오는데 실패했습니다.");
			rd.forward(request, response);
		}
		
	}

}











