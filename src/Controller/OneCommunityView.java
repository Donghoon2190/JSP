package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.CommunityService;
import Dto.BoardInfoBean;

/**
 * Servlet implementation class communityBoard
 */
@WebServlet("/oneCommunityView")
public class OneCommunityView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OneCommunityView() {
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
		// 게시판 상세보기
		int bNum = Integer.parseInt(request.getParameter("Num"));
		String page = request.getParameter("page");
		
		CommunityService cs = new CommunityService();
		BoardInfoBean  board = new BoardInfoBean();
		cs.enterance(3,bNum,0,null,board); 
		
		if(board.getContent() != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Communitydeatil.jsp");
			String hiddenId;
			hiddenId = board.getWriterId().substring(0,3);
			for (int i = 0; i < board.getWriterId().length()-3; i++) {
				hiddenId+="*";
			}
			System.out.println(board.getContent());
			request.setAttribute("view", board);
			request.setAttribute("hiddenId", hiddenId);
			request.setAttribute("page", page);
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("BoardWrite.jsp");
		}

}
}
