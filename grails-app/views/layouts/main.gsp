<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="云物流"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<%--
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'bootstrap/css',file:'bootstrap.min.css')}">
	    <link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'validator',file:'bootstrapValidator.css')}">
	    <script type="text/javascript" src="${createLinkTo(dir:'bootstrap/js',file:'bootstrap.min.js')}"></script>  
	    <script type="text/javascript" src="${createLinkTo(dir:'validator',file:'bootstrapValidator.js')}"></script>  
		 --%>
		<script type="text/javascript"><g:render template="/common/contextJS"></g:render></script>
	    <script type="text/javascript" src="${createLinkTo(dir:'js',file:'jquery-1.10.1.min.js')}"></script>
	    <script type="text/javascript" src="${createLinkTo(dir:'js',file:'validata.min.js')}"></script>
		<script src="${createLinkTo(dir:'js',file:'jquery.fineuploader-3.0.min.js')}"></script>
		<script src="${createLinkTo(dir:'js',file:'application.js')}"></script>
	    <link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'style.css')}">
	    <link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'base.css')}">
	    <script src="${createLinkTo(dir:'Validform',file:'Validform_v5.3.2.js')}"></script>
		<script src="${createLinkTo(dir:'Validform',file:'passwordStrength-min.js')}"></script>
		<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'Validform/css',file:'valiform.css')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
	    <g:render template="/layouts/header"/>
		<g:layoutBody/>
	</body>
	<footer>
		<g:render template="/layouts/footer"/>
	</footer>
	
</html>
