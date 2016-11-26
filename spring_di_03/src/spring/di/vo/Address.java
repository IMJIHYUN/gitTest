package spring.di.vo;

import java.io.Serializable;

public class Address implements Serializable{
	private String zigcode;
	private String address;
	
	public Address(){}
	public Address(String zigcode, String address) {
		super();
		this.zigcode = zigcode;
		this.address = address;
	}
	public String getZigcode() {
		return zigcode;
	}
	public void setZigcode(String zigcode) {
		this.zigcode = zigcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((zigcode == null) ? 0 : zigcode.hashCode());
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
		Address other = (Address) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (zigcode == null) {
			if (other.zigcode != null)
				return false;
		} else if (!zigcode.equals(other.zigcode))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Address [zigcode=" + zigcode + ", address=" + address + "]";
	}
	
	
}
