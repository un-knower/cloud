package user

import java.util.Date;


/**
 * @Package： ServerCar
 * @Title：ServerCar.groovy
 * @author： Pony
 * @Description： 货车信息
 * @date： 2014年11月17日下午5:58:08
 */
class ServerCar {
	String name				//名称
	String description		//描述
	Double load				//载重
	Date buyYear			//购车时间
	String carId			//车牌号码
	String userName			//所有人
	Date dateCreated
	Date lastUpdated
	
	static mapping = {
		version false
	}
	
	static constraints = {
		name(nullable: false)
		description(nullable: false)
		load(nullable: false)
		buyYear(nullable: false)
		carId(nullable: false)
		userName(nullable: false)
	}
}
