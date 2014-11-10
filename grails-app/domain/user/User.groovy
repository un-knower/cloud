package user

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
	String telepone		//电话
	String auth			//角色权限
	
	
	static mapping = {
		version(false)
	}
	
	static constraints = {
		
	}
}
