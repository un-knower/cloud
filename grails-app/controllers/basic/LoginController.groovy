package basic

import user.Server
import user.User

class LoginController {
	def index(){
		
	}
	
	
	def register(){
		
		render(view:"register",model:[template:params.type,step:1])
	}
	
	def save(){
		def result
		if(params.type=="user")result = saveUser(params)
		if(params.type=="server")result = saveServer(params)
		render(view:"register",model:[template:params.type,step:params.step,params:params])
	}
	
	def saveUser(params){
		def result = true 
		def user = User.get(params.id)?:new User()
		user.properties = params
		user.telephone = params.account 
		if(!user.save(flash:true)){
			println user.errors
			result = false
		}else {
			params.step = Integer.valueOf(params.step)+1
		}
		return result
	}
	
	def saveServer(params){
		println params.toString()
		def result = true
		def server = Server.get(params.id)?:new Server()
		server.properties = params
		server.telephone = params.account
		if(!server.save(flash:true)){
			println server.errors
			result = false
		}else {
			params.step = Integer.valueOf(params.step)+1
		}
		return result
	}
}
