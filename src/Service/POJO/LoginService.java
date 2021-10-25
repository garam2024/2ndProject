package Service.POJO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.VO.memberVO;
import com.inter.command;

public class LoginService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
	
		memberDAO dao = new memberDAO();
		memberVO vo = dao.Login(email, pw);
		
		HttpSession session = request.getSession();
		session.setAttribute("vo", vo);
		
		
		
		return "index.jsp";
	}

}
