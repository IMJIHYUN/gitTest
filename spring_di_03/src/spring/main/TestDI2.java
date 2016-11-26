package spring.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.di.vo.Address;
import spring.di.vo.Person;

public class TestDI2 {

	public static void main(String[] args) {
		
		ApplicationContext context=new ClassPathXmlApplicationContext("spring/config/applicationContext2.xml");
		Address address=(Address)context.getBean("address1");
		System.out.println(address);
		
		address=(Address)context.getBean("address2");
		System.out.println(address);
		
		Person person=(Person)context.getBean("person1");
		System.out.println(person);
		
		person=(Person)context.getBean("person2");
		System.out.println(person);
		
	}
	
}
