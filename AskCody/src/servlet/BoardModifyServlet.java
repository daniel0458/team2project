package servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FreeBoardDao;
import service.FreeBoardService;
import service.FreeBoardServiceImpl;
import vo.BoardVO;

@WebServlet("/board_modify.do")
public class BoardModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) 
												throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8"); 
        
        System.out.println("/board_modify.do 처리\n");
        
        FreeBoardDao dao = new FreeBoardDao();
        FreeBoardService service= new FreeBoardServiceImpl(dao);
        
        BoardVO vo = new BoardVO();
        
//        vo.setUser_id(request.getParameter("user_id"));
        vo.setPost_id(Integer.parseInt(request.getParameter("post_id")));
        vo.setUser_id("daniel");
        vo.setTitle(request.getParameter("title"));
        
        if (request.getParameter("image").equals("")) {
        	vo.setHas_picture("true");
        } else {
        	vo.setHas_picture("false");
        }
        
        vo.setContent(request.getParameter("content"));
        vo.setPost_date(new java.sql.Date(new Date().getTime()));
        vo.setCount(Integer.parseInt(request.getParameter("count")));
        try {
            service.modifyBoard(vo);
            response.sendRedirect("post.do?post_id="+request.getParameter("post_id"));
         }catch (Exception e) {
         	request.setAttribute("exception", new Exception("등록 데이터  확인후 다시 등록하세요"));
         	getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
         }
	}
}
