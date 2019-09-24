package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoordiDAO;
import service.CoordiService;
import service.CoordiServiceImp;
import vo.CD_ClothVO;

@WebServlet("/listcoordi.do")
public class ListCoordiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset = utf-8");
		request.setCharacterEncoding("utf-8");
		
		System.out.println("/listcoordi.do 요청 처리 ");
		
		CoordiDAO dao = new CoordiDAO();
		CoordiService service = new CoordiServiceImp(dao);
		List <CD_ClothVO> list = service.loadCoordi();
		
		//System.out.println(list);
		
		request.setAttribute("loadcoordi", list);
		String view = "/Coordi_load.jsp";
			
		getServletContext().getRequestDispatcher(view).forward(request, response);
			
		}
	}
