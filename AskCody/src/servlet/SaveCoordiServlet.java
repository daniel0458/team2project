package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
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

@WebServlet("/save.do")
public class SaveCoordiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset = utf-8");
		request.setCharacterEncoding("utf-8");
		
		System.out.println("/save.do 요청 처리 ");
		

		CoordiDAO dao = new CoordiDAO();
		CoordiService service = new CoordiServiceImp(dao);

		CD_ClothVO vo = new CD_ClothVO();
		vo.setImage((String) request.getParameter("coordi_id[]"));
		
		String[] ss = request.getParameterValues("coordi_id[]");
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println(Arrays.toString(ss));
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		try {
			service.addCoordi(vo);
			
			response.sendRedirect("listcoordi.do");
		} catch (Exception e) {
			request.setAttribute("exception", e);
			//getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}
