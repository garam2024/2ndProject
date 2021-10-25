package Service.POJO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.commentDAO;
import com.inter.command;

public class DeleteComment implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String num = request.getParameter("num");
		String title = request.getParameter("title");
		commentDAO dao = new commentDAO();
		dao.deletecomment(num);
		
		response.setContentType("text/html;charset=euc-kr"); //메인으로 값 보내기~
		request.setAttribute("updatetitle", title);
		PrintWriter out = response.getWriter(); // 객체 생성
		out.print(title); // 보내고자하는 값 지정~
		
		
		
		return "show.jsp";
	}

}
