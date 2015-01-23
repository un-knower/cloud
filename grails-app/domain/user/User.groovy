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
class User {
	
	String account		//账号
	String passWord		//密码
	String nickName		//昵称
	String realName		//身份证姓名
	String idCard		//身份证号码
	String email		//邮箱
	String telephone		//电话
	String auth			//角色权限 物流服务商：server 发布用户：user
	String cardAImg		//身份证正面
	String cardBImg		//身份证反面
	String cardHandImg	//手持身份证
	String carCardImg	//行车证
	Images images		//车辆图片
	Date dateCreated
	Date lastUpdated
	
	static mapping = {
		version false
	}
	
	static constraints = {
		account(unique: true,nullable: false)
		passWord(nullable: false)
		nickName(nullable: true)
		realName(nullable: false)
		idCard(unique: true,nullable: false)
		telephone(unique: true,nullable: false)
		cardAImg(nullable: false)
		cardBImg(nullable: false)
		cardHandImg(nullable: false)
		carCardImg(nullable: false)
	}
}
