package Service.POJO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.boardDAO;
import com.inter.command;

public class DeleteBoardService2 implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String title = request.getParameter("title");
		
		boardDAO dao = new boardDAO();
		dao.deleteservice(title);
		
		return "Mypage.jsp";
	}

}
