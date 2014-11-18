package business

import java.util.Date;

/**
 * @Package： business
 * @Title：GoodsMessage.groovy
 * @author： Pony
 * @Description： 货源信息信息发布
 * @date： 2014年11月17日下午4:49:15
 */
class GoodMessage {
	String title			//标题
	String line				//线路
	int status				//状态
	String description 		//描述
	String formCode			//出发点
	String toCode			//终点
	Double total			//重量
	Double price			//报价
	String address			//地址
	String demand			//需求什么样的车
	String notes			//备注
	Date dateCreated
	Date lastUpdated
	
	static mapping = {
		version	 false
	}
	
	static constraints = {
		title(nullable: false)
		line(nullable: false)
		description(nullable: false)
		formCode(nullable: false)
		toCode(nullable: false)
		total(nullable: false)
		price(nullable: false)
		address(nullable: false)
		demand(nullable: false)
		notes(nullable: false)
		status(nullable: false)
	}
}
