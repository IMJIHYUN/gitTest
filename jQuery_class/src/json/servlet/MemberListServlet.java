package json.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import member.service.MemberService;
import member.vo.Member;


public class MemberListServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("MemberListServlet");
		MemberService service=MemberService.getInstance();
		ArrayList<Member>list= service.getMemberList();
		for(Member li : list)
		{
			System.out.println(li);
		}
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("cache-control", "no-cache");//해주는게 젛음
		PrintWriter out=response.getWriter();
		
		JSONArray js=new JSONArray(list);
		out.println(js);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
