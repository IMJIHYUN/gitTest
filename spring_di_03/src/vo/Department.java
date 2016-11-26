package vo;

import java.io.Serializable;

public class Department implements Serializable{
	
	private int department_Id;
	private String department_Name;
	private String location;
	
	public Department() {
		
	}
	public Department(int department_Id, String department_Name, String location) {
		this.department_Id = department_Id;
		this.department_Name = department_Name;
		this.location = location;
	}
	public int getDepartment_Id() {
		return department_Id;
	}

	public void setDepartment_Id(int department_Id) {
		this.department_Id = department_Id;
	}

	public String getDepartment_Name() {
		return department_Name;
	}

	public void setDepartment_Name(String department_Name) {
		this.department_Name = department_Name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + department_Id;
		result = prime * result + ((department_Name == null) ? 0 : department_Name.hashCode());
		result = prime * result + ((location == null) ? 0 : location.hashCode());
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
		Department other = (Department) obj;
		if (department_Id != other.department_Id)
			return false;
		if (department_Name == null) {
			if (other.department_Name != null)
				return false;
		} else if (!department_Name.equals(other.department_Name))
			return false;
		if (location == null) {
			if (other.location != null)
				return false;
		} else if (!location.equals(other.location))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Department [department_Id=" + department_Id + ", department_Name=" + department_Name + ", location="
				+ location + "]";
	}

	

}
