package Service.POJO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.boardDAO;
import com.inter.command;

public class UpdateContent implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String title = request.getParameter("title");
		String updatetitle = request.getParameter("titleupdate");
		String updatecontent = request.getParameter("contentupdate");
		
		
		boardDAO dao = new boardDAO();
		dao.updatecontent(title, updatetitle, updatecontent); 
		response.setContentType("text/html;charset=euc-kr"); 
		request.setAttribute("updatetitle", updatetitle);
		PrintWriter out = response.getWriter(); 
		out.print(updatetitle); 
		
		
		
		
		return "show.jsp";
	}

}
