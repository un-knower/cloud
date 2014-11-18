package basic

/**
 * @Package： basic
 * @Title：Role.groovy
 * @author：Pony
 * @Description： 权限表
 * @date： 2014年11月17日下午4:10:30
 */
class Role {
	String code				//权限值
	String description		//描述
	
	static mapping = {
		version false
	}
	
	static constraints = {
		code(nullable: false,unique: true)
		description(nullable:true)
	}
}
