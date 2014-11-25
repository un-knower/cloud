<%--
<div class="clearfix main pt15">
	<ul>
		<li>手机号码：<input name="telephone" type="text"/></li>
		<li>密码：<input name="passWord" type="password"/></li>
		<li>重复密码：<input name="passWord2" type="password"/></li>
		<li>用户名：<input name="nickName" type="text"/></li>
		<li>身份证姓名：<input name="realName" type="text"/></li>
		<li>身份证号码：<input name="idCard" type="text"/></li>
		<li>邮箱：<input name="email" type="text"/></li>
		<li>身份证正面：<input name="cardAImg" type="text"/></li>
		<li>身份证反面：<input name="cardBImg" type="text"/></li>
		<li>手持身份证：<input name="cardHandImg" type="text"/></li>
		<li>手持身份证：<input name="cardHandImg" type="text"/></li>
	</ul>
		<button onclick="">下一步</button>
</div>
 --%>
<div class="clearfix main pt15">
    <div class="t-h1">物流商入驻流程</div>
    <ul class="reg mt30 clearfix f12">
	    <li class="${step==1?'select':'' } }"><h2>基本信息设置</h2><p>1、注册云物流企业会员</br>2、实名制注册</p><em></em></li>
		<li class="${step==2?'select':'' } }"><h2>详细资料提交</h2><p>1、上传营业执照</br>2、物流运输企业上传《道路运输许可证》</p><em></em></li>
		<li class="${step==3?'select':'' } }"><h2>在线协议签订</h2><p>1、商家5天内交纳保证金</br>2、签订物流服务平台协议</p><em></em></li>
		<li class="${step==4?'select':'' } }"><h2>信息审核</h2><p>1、工作人员审核</br>2、通过后发布车辆信息</p><em></em></li>
	</ul>
	<form action="${request.contextPath }/login/save" method="post" id="register_form" name="register_form" onsubmit="return check(this)">
	    <input type="hidden" value="${step}" name="step">
	    <input type="hidden" value="server" name="type">
	    <g:if test="${step==1 }">
		    <div class="reg-c mt20 ml20 mr20">
			      <ul class="reg-form pt50 pb50 ml30" style="margin-left:200px;">
				       <li><label><font color="red">* </font>手机号码：</label><input type="text" data-validation="required"  name="account" class="ipt w251"/><a href="#" class="ipt_btn">获取验证码</a></li>
				       <li><label><font color="red">* </font>短信验证码：</label><input type="text" name="msgCode"  class="ipt w251"/></li>
					   <li><label><font color="red">* </font>姓名：</label><input type="text" name="nickName" class="ipt w251"/></li>
					   <li><label><font color="red">* </font>密码：</label><input name="passWord"   type="password" class="ipt w251"/></li>
					   <li><label><font color="red">* </font>重复密码：</label><input name="passWord2"  type="password" class="ipt w251"/></li>
					   <li><input type="submit" class="btn ml90 pt10 pb10 pl30 pr30" value="下一步"></li>
				  </ul>
			</div>
		</g:if>
		<g:if test="${step==2 }">
			<div class="reg-c mt20 ml20 mr20">
		      <ul class="reg-form pt50 pb50 ml30" style="margin-left:200px;">
			       <li><label><font color="red">* </font>身份证姓名：</label><input type="text" name="realName" class="ipt w251"/>
				   <li><label><font color="red">* </font>身份证号码：</label><input type="text" name="idCard" class="ipt w251"/></li>
				   <li><label style="vertical-align: top;"><font color="red">* </font>身份证正面：</label><span class="pic-up"></span></li>
				   <li><label style="vertical-align: top;"><font color="red">* </font>身份证反面：</label><span class="pic-up"></span></li>
				   <li><label style="vertical-align: top;"><font color="red">* </font>手持身份证：</label><span class="pic-up"></span></li>
				   <li><label style="vertical-align: top;"><font color="red">* </font>营业执照：</label><span class="pic-up"></span></li>
				   <li><label style="vertical-align: top;"><font color="red">* </font>运输资格证：</label><span class="pic-up"></span></li>
				   <li><input type="submit" class="btn ml90 pt10 pb10 pl30 pr30" value="下一步"></li>
			  </ul>
			</div>
		</g:if>
		<g:if test="${step==3 }">
			<div class="reg-c mt20 ml20 mr20" >
		      <ul class="reg-form pt50 pb50 ml30" style="margin-left:200px;">
			       <li><label><font color="red">*</font>手机号码：</label><input type="text" name="telephone" class="ipt w251"/><a href="#" class="ipt_btn">获取验证码</a></li>
				   <li><label><font color="red">*</font>姓名：</label><input type="text" name="nickName" class="ipt w251"/></li>
				   <li><label><font color="red">*</font>密码：</label><input name="passWord" type="password" class="ipt w251"/></li>
				   <li><label><font color="red">*</font>重复密码：</label><input name="passWord2" type="password" class="ipt w251"/></li>
				   <li><label><font color="red">*</font>短信验证码：</label><input type="text" class="ipt w251"/></li>
				   <li><label style="vertical-align: top;">图片上传：</label><span class="pic-up"></span><span class="pic-up"></span><span class="pic-up"></span></li>
				   <li><input type="submit" class="btn ml90 pt10 pb10 pl30 pr30" value="下一步"></li>
			  </ul>
			</div>
		</g:if>
		<g:if test="${step==4 }">
			<div class="reg-c mt20 ml20 mr20">
		      <ul class="reg-form pt50 pb50 ml30" style="margin-left:200px;">
			       <li><label><font color="red">*</font>手机号码：</label><input type="text" name="telephone" class="ipt w251"/><a href="#" class="ipt_btn">获取验证码</a></li>
				   <li><label><font color="red">*</font>姓名：</label><input type="text" name="nickName" class="ipt w251"/></li>
				   <li><label><font color="red">*</font>密码：</label><input name="passWord" type="password" class="ipt w251"/></li>
				   <li><label><font color="red">*</font>重复密码：</label><input name="passWord2" type="password" class="ipt w251"/></li>
				   <li><label><font color="red">*</font>短信验证码：</label><input type="text" class="ipt w251"/></li>
				   <li><label style="vertical-align: top;">图片上传：</label><span class="pic-up"></span><span class="pic-up"></span><span class="pic-up"></span></li>
				   <li><input type="submit" class="btn ml90 pt10 pb10 pl30 pr30" value="下一步"></li>
			  </ul>
			</div>
		</g:if>
	</form>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.1.47/jquery.form-validator.min.js"></script>
<script>

<%--
$(document).ready(function(){
	 $.formValidator.initConfig({ formid: "register_form", onerorr: function (msg) { alert(msg) }, onsuccess: function () { alert("提交成功！"); return false; } });
	 $("#passWord").formValidator({onshow:"请输入密码",onfocus:"密码最少为6位",oncorrect:"输入合法"}).inputValidator({ min: 6, empty: { leftempty: false, rightempty: false, emptyerror: "密码两边不能有空格" }, onerror: "密码不能为空或少于6个字符" });
	 $("#passWord2").formValidator({ onshow: "请输入重复密码", onfocus: "两次密码不许一致哦", oncorrect: "密码一致" }).inputValidator({ min: 6, empty: { leftempty: false, rightempty: false, emptyerror: "重复密码两边不能有空格" }, onerror: "重复密码不能为空" }).compareValidator({ desid: "passWord1", operateor: "=", onerror: "两次密码不一致" });

	
	 $.validate();
	     $("#passWord").formValidator({onshow:"请输入密码",onfocus:"密码最少为6位",oncorrect:"输入合法"}).inputValidator({min:6,max:10,onerror:"浣犺緭鍏ョ殑鐢ㄦ埛鍚嶉潪娉?璇风‘璁?}).regexValidator({regexp:"username",datatype:"enum",onerror:"鐢ㄦ埛鍚嶆牸寮忎笉姝ｇ‘"})
	 	        .ajaxValidator({
	         	type : "get",
	 	        url : "Default.aspx",
	 	        datatype : "json",
	 	        success : function(data){   
	 	            if( data == "1" )
	 	            {
	 	                return true;
	 	            }
	 	            else
	 	            {
	 	                return false;
	            }
	 	        },
	 	        buttons: $("#button"),
	 	        error: function(){alert("鏈嶅姟鍣ㄦ病鏈夎繑鍥炴暟鎹紝鍙兘鏈嶅姟鍣ㄥ繖锛岃閲嶈瘯");},
	 	        onerror : "璇ョ敤鎴峰悕涓嶅彲鐢紝璇锋洿鎹㈢敤鎴峰悕",
	         onwait : "姝ｅ湪瀵圭敤鎴峰悕杩涜鍚堟硶鎬ф牎楠岋紝璇风◢鍊?.."
	 	    }).defaultPassed();
	 	    
	 	    var validator = new FormValidator('register_form', [
    {
	    name: 'account',
	    display: 'required',
	    rules: 'required'
	}, {
	    name: 'msgCode',
	    rules: 'integer'
	}, {
	    name: 'password',
	    rules: 'required'
	}, {
	    name: 'password2',
	    rules: 'required'
	    display: 'password confirmation',
	    rules: 'required|matches[password]'
	}], function(errors, event) {
	    if (errors.length > 0) {
	        // Show the errors
	        alert("error");
	    }
});
	 	    
 --%>  	 	    
	
});



</script>