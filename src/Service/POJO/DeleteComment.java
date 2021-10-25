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
		
		response.setContentType("text/html;charset=euc-kr"); //�������� �� ������~
		request.setAttribute("updatetitle", title);
		PrintWriter out = response.getWriter(); // ��ü ����
		out.print(title); // ���������ϴ� �� ����~
		
		
		
		return "show.jsp";
	}

}
