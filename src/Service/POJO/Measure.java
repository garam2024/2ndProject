package Service.POJO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.command;

public class Measure implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String result1 = request.getParameter("box1");
		String result2 = request.getParameter("box2");
		String result3 = request.getParameter("box3");
		String result4 = request.getParameter("box4");
		String result5 = request.getParameter("box5");
		String result6 = request.getParameter("box6");
		String result7 = request.getParameter("box7");
		String result8 = request.getParameter("box8");
		
		String[] result_list = {result1,result2,result3,result4,result5,result6,result7,result8};
			
		
		response.setContentType("text/html;charset=euc-kr");
		// 서버가 사용자에게 응답을 할 때 어떤 파일형태로 응답을 할건지 지정	
		PrintWriter out = response.getWriter();
		request.setAttribute("result", result_list);
		
		
		return "result.jsp";
	}

}
