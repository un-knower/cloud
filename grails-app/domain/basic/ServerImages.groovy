package basic

import user.Server
/**
 * @Package： basic
 * @Title：Images.groovy
 * @author： Pony
 * @Description： 物流服务商图片存储的表
 * @date： 2014年11月11日下午5:37:02
 */
class ServerImages {
	String title			//标题
	String description		//描述
	String url				//图片路径
	String code				//图片类型
	Server	server			//物流商
	Date dateCreated
	Date lastUpdated
	
	
	static mapping = {
		version false
	}
	
	static constraints = {
		server(nullable: true)
		title(nullable: true)
		description(nullable: true)
		url(nullable: true)
	}
}
