package Service.POJO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.commentDAO;
import com.VO.memberVO;
import com.inter.command;

public class commentService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		memberVO vo = (memberVO)session.getAttribute("vo");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		System.out.println(title);
		commentDAO dao = new commentDAO();
		dao.updateComment(content, vo.getNick(), title);
		
		
		
		return "show.jsp";
	}

}
