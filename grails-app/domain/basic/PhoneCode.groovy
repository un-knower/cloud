package basic

import java.util.Date;

class PhoneCode {
	
	String phone
	String code
	int state
	Date dateCreated
	Date lastUpdated
	
	
	static mapping = {
		version false
	}
	
	static constraints = {
		phone(nullable: true)
		code(nullable: true)
		state(nullable: true)
	}
}
