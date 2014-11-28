package basic

import grails.converters.JSON

/**
 * @Package： basic
 * @Title：ImageController.groovy
 * @author： Pony
 * @Description： 图片处理
 * @date： 2014年11月27日下午4:09:53
 */
class ImageController {

	
	/**
	 * 上传图片
	 */
	def upload = {
		try {
			def tempFilePath = FileUtil.getFilePathByUpload(request.multipartFiles.myfile[0]?:request.multipartFiles."${params.mf}"[0])
			def result = [file:"${tempFilePath}"]
			render(text:result as JSON,contentType: "text/plain", status:response.SC_OK)
		} catch(Exception e) {
			println e.message
			render(status: response.SC_INTERNAL_SERVER_ERROR, text:"{success: false}")
		}
	}
	
	/**
	 * 保存缓存数据
	 */
	def savetemp = {
		try {
			def image = FileUtil.handleImg(params.id, params.tempFilePath)
			def file = image.imgPath
			def result = [file:"${file}"]
			render(text:result as JSON,contentType: "application/json", status:response.SC_OK)
		} catch(Exception e) {
			println e.message
			render(status: response.SC_INTERNAL_SERVER_ERROR, text:"{success: false}")
		}
	}
}
