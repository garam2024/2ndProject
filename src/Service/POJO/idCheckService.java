package Service.POJO;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;
import com.inter.command;

public class idCheckService extends HttpServlet	{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("����ȣ��");
		String email = request.getParameter("email");
		System.out.println("����ڰ� �Է��� �̸��� �� :" + email);
		
		memberDAO dao = new memberDAO();
		boolean check = dao.idCheck(email);
		
		System.out.println("ȸ�����԰��ɿ��� :"+ check);
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.print(check);
		
	}
	

}
