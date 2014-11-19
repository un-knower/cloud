package basic

class LoginController {
	def index(){
		
	}
	
	
	def register(){
		
		render(view:"register",model:[template:params.type])
	}
}
