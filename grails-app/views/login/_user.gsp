<div class="clearfix main pt15">
    <div class="t-h1">雇主入驻注册</div>
	<form action="${request.contextPath }/register/save">
	    <div class="reg-c mt20 ml20 mr20">
		      <ul class="reg-form pt50 pb50 ml30" style="margin-left:200px;">
			       <li><label><font color="red">* </font>手机号码：</label><input type="text" name="telephone" class="ipt w251"/><a href="#" class="ipt_btn">获取验证码</a></li>
			       <li><label><font color="red">* </font>短信验证码：</label><input type="text" class="ipt w251"/></li>
				   <li><label><font color="red">* </font>姓名：</label><input type="text" class="ipt w251"/></li>
				   <li><label><font color="red">* </font>密码：</label><input name="passWord" type="password" class="ipt w251"/></li>
				   <li><label><font color="red">* </font>重复密码：</label><input name="passWord2" type="password" class="ipt w251"/></li>
				   <li><input type="submit" class="btn ml90 pt10 pb10 pl30 pr30" value="下一步"></li>
			  </ul>
		</div>
	</form>
</div>