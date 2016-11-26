package spring.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.di.vo.Address;
import spring.di.vo.Person;

public class TestDI {

	public static void main(String[] args) {
		//ApplicationContext는 interface이고, 얘를 implements한 ClassPathXmlApplicatonContext를 생성 
		ApplicationContext context=new ClassPathXmlApplicationContext("spring/config/applicationContext.xml"); //매개변수로 설정파일의 위치를 넘겨준다.
	
		Address address=(Address)context.getBean("address1");
		System.out.println(address);
		
		address=(Address)context.getBean("address2");
		System.out.println(address);
	
		address=(Address)context.getBean("address3");
		System.out.println(address);
		
		address=(Address)context.getBean("address4");
		System.out.println(address);
		
		Person person=(Person)context.getBean("person1");
		System.out.println(person);
		
		person=(Person)context.getBean("person2");
		System.out.println(person);
		
		person=(Person)context.getBean("person4");
		System.out.println(person);
		
		person=(Person)context.getBean("person5");
		System.out.println(person);
		
		person=(Person)context.getBean("person6");
		System.out.println(person);
		
		person=(Person)context.getBean("person7");
		System.out.println(person);
		
	}
}


























