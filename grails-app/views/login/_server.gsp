<script>
$(document).ready(function(){
	initUploadBtn();
	$(".register_form").Validform({
		tiptype:4,
		usePlugin:{
			passwordstrength:{
				minLen:6,//设置密码长度最小值，默认为0;
				maxLen:15,//设置密码长度最大值，默认为30;
				trigger:function(obj,error){
					//该表单元素的keyup和blur事件会触发该函数的执行;
					//obj:当前表单元素jquery对象;
					//error:所设密码是否符合验证要求，验证不能通过error为true，验证通过则为false;
					if(error){
						obj.parent().find(".Validform_checktip").show();
						obj.parent().find(".passwordStrength").hide();
					}else{
						obj.parent().find(".Validform_checktip").hide();
						obj.parent().find(".passwordStrength").show();	
					}
				}
			}
		}
	});
});
</script>
<div class="clearfix main pt15">
    <div class="t-h1">物流商入驻流程</div>
    <ul class="reg mt30 clearfix f12">
	    <li class="${step==1?'select':'' } }"><h2>基本信息设置</h2><p>1、注册云物流企业会员</br>2、实名制注册</p><em></em></li>
		<li class="${step==2?'select':'' } }"><h2>详细资料提交</h2><p>1、上传营业执照</br>2、物流运输企业上传《道路运输许可证》</p><em></em></li>
		<li class="${step==3?'select':'' } }"><h2>在线协议签订</h2><p>1、商家5天内交纳保证金</br>2、签订物流服务平台协议</p><em></em></li>
		<li class="${step==4?'select':'' } }"><h2>信息审核</h2><p>1、工作人员审核</br>2、通过后发布车辆信息</p><em></em></li>
	</ul>
	<form action="${request.contextPath }/login/save" method="post" class="register_form" id="register_form" name="register_form" onsubmit="return check(this)">
	    <input type="hidden" value="${step}" name="step">
	    <input type="hidden" value="server" name="type">
	    <g:if test="${step==1 }">
		    <div class="reg-c mt20 ml20 mr20">
			      <ul class="reg-form pt50 pb50 ml30" style="margin-left:200px;">
				       <li><label><font color="red">* </font>手机号码：</label><input type="text"  name="account" class="ipt w251" ajaxurl="${request.contextPath }/login/ajax" datatype="m" sucmsg="可以使用未注册过！" nullmsg="请输入您的手机号码！" errormsg="手机号码输入有误！"/><a href="#" class="ipt_btn">获取验证码</a></li>
				       <li><label><font color="red">* </font>短信验证码：</label><input type="text" name="msgCode"  class="ipt w251" datatype="n" sucmsg="验证码正确！" nullmsg="查看手机接收短信验证码！" errormsg="验证码有误！"/></li>
					   <li><label><font color="red">* </font>姓名：</label><input type="text" name="nickName" class="ipt w251"/></li>
					   <li><label><font color="red">* </font>密码：</label><input name="passWord"   type="password" class="ipt w251" datatype="*6-15" plugin="passwordStrength" nullmsg="请输入密码！" errormsg="密码范围在6~15位之间！"/><div class="passwordStrength" style="display:none;"><b>密码强度：</b> <span>弱</span><span>中</span><span class="last">强</span></div></li>
					   <li><label><font color="red">* </font>重复密码：</label><input name="passWord2"  type="password" class="ipt w251" recheck="passWord" datatype="*6-18" sucmsg="两次输入一样！" errormsg="两次输入的密码不一致！"/></li>
					   <li><input type="submit" class="btn ml90 pt10 pb10 pl30 pr30" value="下一步"></li>
				  </ul>
			</div>
		</g:if>
		<g:if test="${step==2 }">
			<div class="reg-c mt20 ml20 mr20">
		      <ul class="reg-form pt50 pb50 ml30" style="margin-left:200px;">
			       <li><label><font color="red">* </font>身份证姓名：</label><input type="text" name="realName" class="ipt w251" datatype="s"  sucmsg="通过检测！" nullmsg="请填写身份证姓名！" errormsg="身份证姓名不符合规定！"/>
				   <li><label><font color="red">* </font>身份证号码：</label><input type="text" name="idCard" class="ipt w251" datatype="/^d{15}|d{}18$" sucmsg="通过检测！" nullmsg="请填写身份证号码！" errormsg="身份证号码不符合规定！"/></li>
				   <li><label style="vertical-align: top;"><font color="red">* </font>身份证正面：</label>
					   <div class="uploadBtn upload-btn-container pic-up">
							<i onclick="$(this).parent().find('img').attr('src','${request.contextPath}/images/blank.png');$(this).parent().find('input[name=imgUrl]').val('')" class="icon-trash" ></i>
							<input type="hidden" name="imgUrl" id="imgUrl" class="uploadInput" value=""/>
							<img id="pic" style="clip:rect(0 114px 88px 0);position: absolute;" src="" border="0" />
						</div>
					</li>
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
