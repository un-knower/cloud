package business

import user.User
import basic.Global
import basic.PhoneCode

class InterfaceController {
	
	def register = {
		type
		name
		telephone
		password
		def result = 0
		def type = params.type
		def code = PhoneCode.findByCodeAndPhoneAndState(params.code,params.telephone,Global.PHONE_CODE_OFF)
		if(code){
			if(type=="user"){
				def user = new User()
				user.passWord = params.password
				user.nickName = params.password?:""
				user.telephone = params.telephone
				
			}else if(type=="business"){
			
			
			}
			
		}
		
	}
	
	def authphone = {
		def array = [0,1,2,3,4,5,6,7,8,9];
		Random rand = new Random();
		for (int i = 10; i > 1; i--) {
			int index = rand.nextInt(i);
			int tmp = array[index];
			array[index] = array[i - 1];
			array[i - 1] = tmp;
		}
		int result = 0;
		for(int i = 0; i < 6; i++){
			result = result * 10 + array[i];
		}
		
		def code = new PhoneCode()
		code.phone = params.phone
		code.code = result
		code.state = Global.PHONE_CODE_OFF
		if(!code.save(flush:true)){
			println code.errors
		}
		render result
	}
	
}
