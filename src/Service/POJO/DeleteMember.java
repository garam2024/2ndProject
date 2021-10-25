package Service.POJO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;
import com.inter.command;

public class DeleteMember implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		
		memberDAO dao = new memberDAO();
		dao.deleteMember(email);
			
		
		
		
		return "ClientSelect.jsp";
	}

}
