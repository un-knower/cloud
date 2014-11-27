function initUploadBtn() {
	$('.uploadBtn,.uploadBtn4background').each(function(){
		var button = this;
		var $el = $(this);
		var $img = $el.find('img:first');
		var $input = $el.find('input[type=hidden]:first');
		var $preview = $input.attr('preview');
		new qq.FineUploaderBasic({
			button: button,
			uploaderType: 'basic',
			multiple: false,
			request: {
				params: {},
				endpoint: app.contextPath + "/image/upload",
				inputName: 'myfile',
				forceMultipart: true
			},
			text: {
				uploadButton: $el.html()
			},
			validation: {
				allowedExtensions: ['jpg','png','jpeg','bmp','tiff'],
				sizeLimit: 2097152 // 2 mB = 2 * 1024 * 1024 bytes
			},
			callbacks: {
				onError: function(id, fileName, errorReason) {
					if(errorReason.indexOf('too large') >= 0) {
						alert("图片过大，最大" + errorReason.substring(errorReason.lastIndexOf('is ') + 3, errorReason.length - 1));
					}
				},
				onUpload: function(id, fileName) {
					$('.submitBtn').attr('disabled', true);
				},
				onProgress: function(id, fileName, loaded, total) {
				},
				onComplete: function(id, fileName, responseJSON) {
					var imgFile = responseJSON.file;
					var imgSrc = app.contextPath + '/' + imgFile.substring(imgFile.indexOf('upload/temp'), imgFile.length);
					if($el.hasClass('uploadBtn4background')) {
						$el.css('background', 'url(' + imgSrc + ')');
					} else {
						$img.attr('src', imgSrc);
					}
					$input.val(imgFile);
					if($preview != "")$("#"+$preview).attr("src",imgSrc);
					$input.addClass('completed');
					$('.icon-remove').removeClass('hide');
					$el.find('input[type=file]').css('height', $el.height());
					$('.submitBtn').attr('disabled', false);
				}
			}
		});
		$el.find('input[type=file]').css('height', $el.height());
	});
}