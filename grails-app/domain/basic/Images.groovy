package basic

import java.util.Date;

/**
 * @Package： basic
 * @Title：Images.groovy
 * @author： maqiankun
 * @Description： 图片存储的表
 * @date： 2014年11月11日下午5:37:02
 */
class Images {
	String title			//标题
	String description		//描述
	String url				//图片路径
	Date dateCreated
	Date lastUpdated
	
	
	static mapping = {
		version false
	}
	
	static constraints = {
		title(nullable: true)
		description(nullable: true)
		url(nullable: true)
	}
}
