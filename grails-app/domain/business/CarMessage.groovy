package business

import java.util.Date;

/**
 * @Package： business
 * @Title：CarMessage.groovy
 * @author： Pony
 * @Description： 货车信息
 * @date： 2014年11月17日下午4:54:25
 */
class CarMessage {
	String title			//标题
	String line				//线路
	String description 		//描述
	String formCode			//出发点
	String toCode			//终点
	String notes			//备注
	Date dateCreated
	Date lastUpdated
	
	static mapping = {
		version false
	}
	
	static constraints = {
		title(nullable: false)
		line(nullable: false)
		description(nullable: false)
		formCode(nullable: false)
		toCode(nullable: false)
		notes(nullable: false)
	}
}
