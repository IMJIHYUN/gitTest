package spring.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import vo.Department;
public class TestDI3 { //DAO라고 생각해바바 
	
	/*CRUD*/

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		//book 에서 셀렉트 해서 !
		//spring설정파일 - spring-dbcp.xml
		//빈으로 설정해서?
		ApplicationContext context=new ClassPathXmlApplicationContext("spring/config/spring-dbcp.xml"); 
		BasicDataSource dataSource=(BasicDataSource)context.getBean("dataSource");
		Connection conn=null;
		Statement state=null;
		ResultSet rset=null;
		//Department department=new Department(11111,"개발1111부","판교");
		String sql="select department_id,department_name, location from department order by department_id";
		try{
		conn=dataSource.getConnection();
		state=conn.createStatement();
		System.out.println(conn);
		//DB에 연결했다.
		 rset=state.executeQuery(sql);
		
		 while(rset.next())
		 {
			 int deptId=rset.getInt(1);
			 String deptName=rset.getString(2);
			 String loc=rset.getString(3);
			 System.out.printf("부서 아이디 : %d, 부서명 : %s, 부서 위치 : %s\n",deptId,deptName,loc);
		 }
		 
		}finally
		{
			if(state!=null)state.close();
			if(conn!=null)conn.close();
		}
		
		
	

	}

}









