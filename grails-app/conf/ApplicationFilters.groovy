class ApplicationFilters {
	def filters = {
		all(controller:'*', action:'*') {
			before = {
//				if(controllerName != 'dirserve' && !session.user && controllerName && controllerName != 'login' && controllerName != 'logout' && controllerName != 'campaignstatistic' && 
//					controllerName != 'preview' && controllerName != 'nav' && controllerName != 'release' && controllerName != 'interface' && !request.xhr && controllerName != 'jcaptcha') {
//					session.targetParams = params
//					redirect(controller:'login', action:'auth')
//					return
//				}
			}
		}
		
		controller(controllerExclude: '*') {
			before = {}
		}
		
		action(actionExclude: '*') {
			before = {}
		}
		
		uri(uriExclude: '/') {
			before = {}
		}
	}
}
