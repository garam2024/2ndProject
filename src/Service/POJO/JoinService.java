package Service.POJO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;
import com.inter.command;

public class JoinService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String tel = request.getParameter("tel");
		
		memberDAO dao = new memberDAO();
		dao.Join(email, pw, nick, tel);
		
		return "index.jsp";
	}

}
