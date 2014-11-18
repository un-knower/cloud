package business

import java.util.Date;

/**
 * @Package： business
 * @Title：OrderLine.groovy
 * @author： maqiankun
 * @Description： 记录订单的时时线路数据
 * @date： 2014年11月18日下午5:32:18
 */
class OrderLine {
	Order order				//订单
	String location			//坐标    以JSON的方式记录经纬度[{"l":"21.2561","d":"10.2222","str":"中国北京","date":"2014-11-17 17:38:25"},{"l":"21.2561","d":"10.2222","str":"中国北京","date":"2014-11-17 17:38:25"}]
	Date dateCreated
	Date lastUpdated
	
	
	
	static mapping = {
		version false
	}	
	
	static constraints = {
		order(nullable: false)
		location(nullable:true )
	}
}
