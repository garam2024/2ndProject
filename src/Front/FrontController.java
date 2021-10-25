package Front;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.command;

import Service.POJO.DeleteBoardService;
import Service.POJO.DeleteBoardService2;
import Service.POJO.DeleteComment;
import Service.POJO.DeleteMember;
import Service.POJO.JoinService;
import Service.POJO.LoginService;
import Service.POJO.LogoutService;
import Service.POJO.Measure;
import Service.POJO.UpdateContent;
import Service.POJO.WriteCheck;
import Service.POJO.commentService;
import Service.POJO.idCheckService;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String res_uri = uri.substring(path.length()+1);
	
		
		command service = null;
		
		if (res_uri.equals("JoinService.do")) {
			service = new JoinService();
		}else if(res_uri.equals("LoginService.do")) {
			service = new LoginService();
		}else if(res_uri.equals("LogoutService.do")) {
			service = new LogoutService();
		}else if(res_uri.equals("WriteCheck.do")) {
			service = new WriteCheck();
		}else if(res_uri.equals("commentService.do")) {
			service = new commentService();
		}else if(res_uri.equals("UpdateContent.do")) {
			service = new UpdateContent();
		}else if(res_uri.equals("measure.do")) {
			service = new Measure();
		}else if(res_uri.equals("DeleteBoardService.do")) {
			service = new DeleteBoardService();
		}else if(res_uri.equals("DeleteComment.do")) {
			service = new DeleteComment();
		}else if(res_uri.equals("DeleteMember.do")) {
			service = new DeleteMember();
		}else if(res_uri.equals("DeleteBoardService2.do")) {
			service = new DeleteBoardService2();
		}
		
		 
		String url = service.execute(request, response);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
		
		
		
		
		
		
		
	}

}
