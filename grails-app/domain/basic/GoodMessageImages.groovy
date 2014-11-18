package basic

import business.GoodMessage

/**
 * @Package： basic
 * @Title：Images.groovy
 * @author： maqiankun
 * @Description： 图片存储的表
 * @date： 2014年11月11日下午5:37:02
 */
class GoodMessageImages {
	String title			//标题
	String description		//描述
	String url				//图片路径
	GoodMessage message		//信息
	Date dateCreated
	Date lastUpdated
	
	
	static mapping = {
		version false
	}
	
	static constraints = {
		message(nullable: true)
		title(nullable: true)
		description(nullable: true)
		url(nullable: true)
	}
}
