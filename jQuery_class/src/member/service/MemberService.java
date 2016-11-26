package member.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import member.vo.Member;

public class MemberService {
	private static MemberService instance;
	
	private MemberService(){}
	
	public static MemberService getInstance(){
		if(instance == null) instance = new MemberService();
		return instance;
	}
	public Member getMemberById(String id){
		return new Member(id, "이우주", "kimys@kosta.or.kr", 120100, true);
	}
	public ArrayList getMemberList(){
		ArrayList<Member> list = new ArrayList<>();
		int i = (int)(Math.random()*9)+1;
		list.add(new Member("id-1", "김영수", "kim@a.com", 32000*i, true));
		list.add(new Member("id-2", "최민수", "choi@b.com", 32000*i, true));
		list.add(new Member("id-3", "오정길", "oh@c.com", 32000*i, false));
		list.add(new Member("id-4", "이명철", "lee@d.com", 32000*i, true));
		list.add(new Member("id-5", "하영희", "ha@e.com", 32000*i, false));
		list.add(new Member("id-6", "오순정", "oh@f.com", 32000*i, true));
		list.add(new Member("id-7", "이명지", "lmj@g.com", 32000*i, true));
		list.add(new Member("id-8", "조영길", "cho@h.com", 32000*i, false));
		return list;
	}
	public List getIds(){
		return Arrays.asList("id-1", "id-2", "id-3", "id-4", "id-5", "id-6", "id-7");
	}
}
