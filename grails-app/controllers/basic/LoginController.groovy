package basic

import grails.converters.JSON
import user.Server
import user.User

class LoginController {
	def index(){
		
	}
	
	
	def register(){
		render(view:"register",model:[template:params.type,step:(params.step?:1) as int])
	}
	
	def save(){
		def result
		if(params.type=="user")result = saveUser(params)
		if(params.type=="server")result = saveServer(params)
		//redirect(view:"register",model:[template:params.type,step:params.step,params:params])
		redirect(action:"register",params:[id:result?.id,type:params.type,step:params.step])
	}
	
	def saveUser(params){
		def user = User.get(params.id)?:new User()
		user.properties = params
		user.telephone = params.account 
		if(!user.save(flash:true)){
			println user.errors
		}else {
			params.step = Integer.valueOf(params.step)+1
		}
		return user
	}
	
	def saveServer(params){
		println params.toString()
		def server = Server.get(params.id)?:new Server()
		server.properties = params
		server.telephone = params.account
		if(!server.save(flash:true)){
			println server.errors
		}else {
			params.step = Integer.valueOf(params.step)+1
		}
		return server
	}
	
	def ajax(){
		println params.toString()
		def server = Server.findByAccount(params.param)
		def map = [:]
		map.info = server?"已被注册请直接登录！":"可以使用未注册过！"
		map.status =server?"n":"y"
		render map as JSON
	}
}
