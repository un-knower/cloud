<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'index.js')}"></script>
</head>
<body>
	<div class="clearfix main pt15">
		<div class="b-k w310 d-it fl h180">
			<div class="search_l">
				<ul>
					<li class="search select b-t" data="A">线路查询</li>
					<li class="search" data="B">物流跟踪</li>
					<li class="search" data="C">物流网点</li>
				</ul>
			</div>
			<ul class="A search_r tab-info">
				<li><label>发货地</label><select class="sel"><option>请选择</option></select></li>
				<li><label>收货地</label><select class="sel"><option>请选择</option></select></li>
				<li><input type="submit" value="查询" class="btn ml55" /></li>
			</ul>
			<ul class="B search_r tab-info" style="display: none;">
				<li><label>发货地</label><select class="sel"><option>请选择</option></select></li>
				<li><label>收货地</label><select class="sel"><option>请选择</option></select></li>
				<li><input type="submit" value="查询" class="btn ml55" /></li>
			</ul>
			<ul class="C search_r tab-info" style="display: none;">
				<li><label>发货地</label><select class="sel"><option>请选择</option></select></li>
				<li><label>收货地</label><select class="sel"><option>请选择</option></select></li>
				<li><input type="submit" value="查询" class="btn ml55" /></li>
			</ul>
		</div>

		<div class="w405 fl ml15">
			<img src="images/banan.jpg" border="0" width="405" height="180" />
		</div>

		<div class="b-k w251 d-it fl h180 ml15">
			<ul class="login-n">
				<li class="loginA select b-r">发货者</li>
				<li class="loginB">物流商</li>
			</ul>
			<ul class="search_r logina">
				<li><label>用户名</label><input type="text" class="ipt" /></li>
				<li><label>密&nbsp;&nbsp;码</label><input type="text" class="ipt" /></li>
				<li><input type="submit" value="查询" class="btn ml55" /><a
					href="${request.contextPath }/login/register?type=user" class="btn ml5" >注册</a></li>
			</ul>
			<ul class="search_r loginb" style="display: none;">
				<li><label>用户名</label><input type="text" class="ipt" /></li>
				<li><label>密&nbsp;&nbsp;码</label><input type="text" class="ipt" /></li>
				<li><input type="submit" value="查询" class="btn ml55" /><a
					href="${request.contextPath }/login/register?type=server" class="btn ml5" >注册</a></li>
			</ul>
		</div>
	</div>

	<div class="clearfix main pt15">
		<div class="t-h1">打造最诚信服务交易平台</div>
		<div class="jypt">
			<dl>
				<dt class="i-1"></dt>
				<dd>
					担保交易，满意付款
					<p>资金安全有保障</p>
				</dd>
			</dl>
			<dl>
				<dt class="i-2"></dt>
				<dd>
					服务商100%实名认证
					<p>资金安全有保障</p>
				</dd>
			</dl>
			<dl>
				<dt class="i-3"></dt>
				<dd>
					担保交易，满意付款
					<p>资金安全有保障</p>
				</dd>
			</dl>
			<dl>
				<dt class="i-4"></dt>
				<dd>
					76,7892,9000条
					<p>资金安全有保障</p>
				</dd>
			</dl>
			<dl>
				<dt class="i-5"></dt>
				<dd>
					76,7819,9000,56条
					<p>资金安全有保障</p>
				</dd>
			</dl>
			<dl>
				<dt class="i-6"></dt>
				<dd>
					76,7819,9000,56条
					<p>资金安全有保障</p>
				</dd>
			</dl>
		</div>
	</div>

	<g:render template="/home/indexList"></g:render>
	<g:render template="/common/homeHelp"></g:render>
</body>
</html>
