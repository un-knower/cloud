package business

import user.Server
import user.User

/**
 * @Package： business
 * @Title：Order.groovy
 * @author： Pony
 * @Description： 订单
 * @date： 2014年11月17日下午4:56:47
 */
class Order {
	Server server			//服务商
	User user				//发布者
	GoodMessage message		//信息
	String title			//订单标题
	String code				//订单号码
	String line  			//线路
	Double price 			//价格
	String description		//描述
	String province			//省份
	String city				//市
	String address			//详细地址
	int status				//状态
	Date sendTime			//出发时间
	Date endTime			//结束时间
	Date dateCreated
	Date lastUpdated
		
	
	static mapping = {
		version false
	}
	
	static constraints = {
		message(nullable: false)
		title(nullable: false)
		line(nullable: false)
		code(nullable: false)
		price(nullable: false)
		description(nullable: false)
		province(nullable: false)
		city(nullable: false)
		address(nullable: false)
		server(nullable: false)
		user(nullable: false)
		status(nullable: false)
		sendTime(nullable: true)
		endTime(nullable: true)
	}
}
