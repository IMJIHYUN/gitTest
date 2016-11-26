package json.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import member.service.MemberService;
import member.vo.Member;

@WebServlet("/json/JSONServlet")
public class JSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//1. 요청파라미터조회
		String id = request.getParameter("id");
		//2. Business Logic 처리 - Model
		MemberService service = MemberService.getInstance();
		Member member = service.getMemberById(id);
		//3. 응답.
		
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("cache-control", "no-cache"); //웹 브라우저에게 - 캐시에 저장하지 말라고! 하는 것
		PrintWriter out = response.getWriter();
		//VO - JSONObject
		JSONObject obj = new JSONObject(member);
		System.out.println(obj);
		out.println(obj);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}






