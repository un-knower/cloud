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
	<form action="${request.contextPath }/login/save" method="post" name="register_form" onsubmit="return check(this)">
	    <input type="hidden" value="1" name="step">
	    <input type="hidden" value="server" name="type">
	    <div class="reg-c mt20 ml20 mr20">
		      <ul class="reg-form pt50 pb50 ml30" style="margin-left:200px;">
			       <li><label><font color="red">* </font>手机号码：</label><input type="text"   name="account" class="ipt w251"/><a href="#" class="ipt_btn">获取验证码</a></li>
			       <li><label><font color="red">* </font>短信验证码：</label><input type="text" name="msgCode"  class="ipt w251"/></li>
				   <li><label><font color="red">* </font>姓名：</label><input type="text" name="nickName" class="ipt w251"/></li>
				   <li><label><font color="red">* </font>密码：</label><input name="passWord"   type="password" class="ipt w251"/></li>
				   <li><label><font color="red">* </font>重复密码：</label><input name="passWord2"  type="password2" class="ipt w251"/></li>
				   <li><input type="submit" class="btn ml90 pt10 pb10 pl30 pr30" value="下一步"></li>
			  </ul>
		</div>
	</form>
   <div class="reg-c mt20 ml20 mr20" style="display: none;">
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
</div>
<script>
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
</script>