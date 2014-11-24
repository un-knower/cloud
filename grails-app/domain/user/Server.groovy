package user

import java.util.Date;

import basic.Images

/** 
* @ClassName: User 
* @Description: 用户表  
* @author Pony 
* @date 2014年11月8日 下午9:41:09 
*  
*/
class Server {
	
	String account		//账号
	String passWord		//密码
	String nickName		//昵称
	String msgCode		//短信验证码
	String realName		//身份证姓名
	String idCard		//身份证号码
	String email		//邮箱
	String telephone	//电话
	String auth			//角色权限 物流服务商：server 发布用户：user
	String cardAImg		//身份证正面
	String cardBImg		//身份证反面
	String cardHandImg	//手持身份证
	String carCardImg	//行车证
	Integer step		//当前的信息完整情况
	Date dateCreated
	Date lastUpdated
	
	static mapping = {
		version false
	}
	
	static constraints = {
		account(unique: true,nullable: false)
		passWord(nullable: false)
		nickName(nullable: true)
		realName(nullable: true)
		idCard(unique: true,nullable: true)
		telephone(unique: true,nullable: true)
		cardAImg(nullable: true)
		cardBImg(nullable: true)
		cardHandImg(nullable: true)
		carCardImg(nullable: true)
		auth(nullable: true)
		email(nullable: true)
		msgCode(nullable: true)
	}
}
