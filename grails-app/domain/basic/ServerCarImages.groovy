package basic

import user.ServerCar
/**
 * @Package： basic
 * @Title：Images.groovy
 * @author： Pony
 * @Description： 图片存储的表
 * @date： 2014年11月11日下午5:37:02
 */
class ServerCarImages {
	String title			//标题
	String description		//描述
	String url				//图片路径
	ServerCar car			//物流商
	Date dateCreated
	Date lastUpdated
	
	
	static mapping = {
		version false
	}
	
	static constraints = {
		car(nullable: true)
		title(nullable: true)
		description(nullable: true)
		url(nullable: true)
	}
}
