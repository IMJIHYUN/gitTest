package spring.di.vo;

import java.io.Serializable;

public class Person implements Serializable{

	//실제 <bean>을 쓸 때는 VO 객체를 생성하진 않지만, 연습용으로 VO가 좋아서 예시를 VO로 하는 것!
	//공통적으로 사용하는 것이 값일리가 없다. bean으로 등록할 때는 일 하는 용도의 객체를 등록한다.
	private String name;
	private int age;
	private double weight;
	private Address address; //Person 객체가 Address 객체를 참조
	
	public Person(){}
	
	
	public Person(Address address) {
		super();
		this.address = address;
	}


	public Person(String name, int age, double weight) {
		super();
		this.name = name;
		this.age = age;
		this.weight = weight;
	}


	public Person(String name, double weight) {
		super();
		this.name = name;
		this.weight = weight;
	}


	public Person(int age, double weight) {
		super();
		this.age = age;
		this.weight = weight;
	}

	public Person(String name, int age, double weight, Address address) {
		super();
		this.name = name;
		this.age = age;
		this.weight = weight;
		this.address = address;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public double getWeight() {
		return weight;
	}



	public void setWeight(double weight) {
		this.weight = weight;
	}



	public Address getAddress() {
		return address;
	}



	public void setAddress(Address address) {
		this.address = address;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + age;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		long temp;
		temp = Double.doubleToLongBits(weight);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Person other = (Person) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (age != other.age)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (Double.doubleToLongBits(weight) != Double.doubleToLongBits(other.weight))
			return false;
		return true;
	}



	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + ", weight=" + weight + ", address=" + address + "]";
	}
	
	
}
