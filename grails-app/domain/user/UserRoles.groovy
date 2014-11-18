package user

import basic.Role

/**
 * @Package： user
 * @Title：UserRoles.groovy
 * @author：Pony
 * @Description： 用户权限关系表
 * @date： 2014年11月17日下午4:11:02
 */
class UserRoles {
	User user
	Role role
	
	static mapping = {
		version false
	}
	
	static constraints = {
		user(nullable: false)
		role(nullable: false)
	}
}
