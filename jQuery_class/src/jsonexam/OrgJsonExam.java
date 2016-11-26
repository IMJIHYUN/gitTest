package jsonexam;

import java.util.Arrays;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import member.vo.Member;

/*
 * JSON- javaAPI : Java 데이터를  <--> JSON 문자열로 변환!
 * 2가지가 있다!
 * JSONObject : Java data(vo형태 or Map 형태) <---> JSON(Javascript 객체) 변환 이런 문자열로->{ } 
 * JSONArray: Java data(배열,List, Set) <--->JSON(Javasvript 배열) 변환 이런 문자열로 ->[ ]
 */
public class OrgJsonExam {
	
	public static void test1() throws JSONException
	{
		//String 변환 전 일단 값 넣는다!
		JSONObject obj=new JSONObject();// {}
		obj.put("cpu", "i7");//{"cpu":"i7"}
		obj.put("RAM", 16);//{"cpu":"i7","RAM":16}
		obj.put("HDD", "1TB");
		obj.put("weight", 1.5);
		
		String str=obj.toString(); //String 변환! 
		System.out.println(str);
	}
	
	public static void test2()
	{
		//vo객체를 자바스크립트 객체 형태로 만든다! -> { }
		Member member=new Member("id-1111","김철수","k@naver.com",20300,true);
		
		JSONObject obj=new JSONObject(member); // { } -> {instance변수명 : instance의 값} getter를 통해서!
		System.out.println(obj);
		
	}
	
	public static void test3()
	{
		//Javascript의 배열 형태로 만들어본다! [ 값, 값, 값, ....]   배열로 자바스크립트가 받으면 for문 돌려서 하면 돼 forEach 
		JSONArray arr=new JSONArray();
		arr.put("노트북");
		arr.put(3000);
		arr.put(false);
	//	arr.put(new Member("id-111","이름","이메일",3000,false)); //이렇게 넣으면 안 돼!
		//put으로 객체를 넣는 방법!
		arr.
		put(new JSONObject(new Member("id-111","이름","이메일",3000,false)));
		//이렇게 하면 자바스크립트 쪽에서! var a=["노트북",3000,false,{"marriage":false,"name":"이름","id":"id-111","email":"이메일","mileage":3000}]
		//a[3].marriage 이런식으로 뽑아서 써야함!
		
		System.out.println(arr.toString());
	}
	public  static void test4()
	{//디비에서 arrayList로 받아온 경우! 이런 형식으로 보내줘야 해 [{},{},{}]
		List<Member> list	=Arrays.asList(new Member("id-1","김영수","a@naver.com",2000,true),
				new Member("id-2","박영수","p@naver.com",3000,true),
				new Member("id-3","최영수","ch@naver.com",4000,true)
				);
	JSONArray arr=new JSONArray(list); // 생성자에 넣어주면 된다.! 배열,Set,List를 알아서 바꿔준다!! 와!!!!
	System.out.println(arr
			);
		
	}
	public static void main(String[] args) throws JSONException {
		test1();
		test2();
		test3();
		test4();
		
	}

}
