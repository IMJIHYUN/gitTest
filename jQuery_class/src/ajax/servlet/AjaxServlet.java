package ajax.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajax/AjaxServlet") //어노테이션 기법으로 설정했다.
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//요청파라미터 조회
		String id = request.getParameter("id");
		//비지스로직처리
	
		String greeting = "안녕하세요. "+id+"님";//처리결과
		System.out.println(greeting);
		//응답.
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("cache-control", "no-cache");
		PrintWriter out = response.getWriter();
		out.println(greeting);//전체 HTML 문서를 응답하는 것이 아니라 처리결과값만 문자열로 출력한다. 
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}










