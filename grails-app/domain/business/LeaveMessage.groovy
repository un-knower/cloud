package business

import java.util.Date;

import user.Server

/**
 * @Package： business
 * @Title：LeaveMessage.groovy
 * @author： Pony
 * @Description： 发布信息留言
 * @date： 2014年11月17日下午4:48:45
 */
class LeaveMessage {
		GoodMessage gmessage		//发布信息
		Server server				//服务商
		Double	price				//报价
		String descrition			//描述
		String parent				//父类
		String picture				//图片
		Date dateCreated
		Date lastUpdated
		
		static mapping = {
			version false 
		}
		
		static constraints = {
			gmessage nullable: false
			server nullable: false
			price nullable: false
			descrition nullable: false
			parent nullable: true
			picture nullable: false
		}
}
