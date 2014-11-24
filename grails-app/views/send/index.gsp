<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<script type="text/javascript" src="${request.contextPath }/register.js"></script>
</head>
<body>

<!--logo-->
<div class="clearfix main pt15">
		<img src="${request.contextPath}/images/ban.jpg" border="0" />
</div>

<div class="clearfix main pt15">
<div class="alp-fill-order-content">
						<div class="section">				
        		<div class="mgb10">
            		<div class="title">
                        <span class="wtitle">发货方</span>
            			<span class="mgl10 gray">填写完整、准确信息，物流跟进更及时</span>
            		</div>
                    <div class="content">
            			<div style="display: none;" id="senderViewDiv" class="mgr10">
                            <table>
            					<tbody><tr>
                                    <td>
            							<span class="senderName">Pony</span>
                            			<span class="pdl20 senderMobile"></span>
            							<span class="senderShowDispalyPhone">
										            							</span>
            							<span class="pdl20 senderCorpName"></span>
            						</td>
                                    <td rowspan="2" width="80">
                                        <span class="pdl20">
            								<a aliclickinited="true" class="alp-btns-o" href="javascript:;" id="reelectSenderBtn" aliclickkey="itu_tran_orderbyroute_sender_edit"><span class="inner">重选</span></a>
            							</span>
            						</td>
                                </tr>
            					<tr>
                                    <td>
                                        <span>
                            				<span class="senderProvinceName"></span>
            								<span class="senderCityName pdl10"></span> 
            								<span class="senderCountyName pdl10"></span> 
            								<span class="senderAddressShow pdl10"></span>
                            			</span>
            						</td>
                                </tr>
            				</tbody></table>
                    	</div>
                		<table style="display: table;" class="hide" id="senderInputDiv">
                			<tbody><tr>
                				<td class="ar" height="30" width="90"><span class="red">*</span>联系人：</td>
                                <td>
                					<input autocomplete="off" class="txt" maxlength="50" id="sender" name="_fm.f._0.sende" value="Pony" type="text">									
									<a aliclickinited="true" id="choseSenderBtn" rel="logined_show" class="ipt_btn" href="javascript:;" aliclickkey="itu_tran__tab_selectsender"><span class="inner">选择</span></a>
                					<input autocomplete="off" checked="checked" name="_fm.f._0.ad" value="Y" id="addSender" type="checkbox"><label class="input-label" for="addSender">保存到通讯录</label>
                				</td>
                            </tr>
                			<tr>
                                <td class="ar" height="30" width="90"><span class="red">*</span>公司：</td>
                                <td>
                					<input autocomplete="off" maxlength="50" class="txt" id="senderCorp" name="_fm.f._0.s" value="" type="text">
                				</td>
                            </tr>
                			<tr>
                				<td class="ar" height="30" width="90"><span class="red">*</span>所在地：</td>
                                <td>
									<input autocomplete="off" maxlength="50" class="txt" id="senderCorp" name="_fm.f._0.s" value="" type="text">
                				</td>
                            </tr>
            				<tr>
                				<td class="ar" height="30" width="90">街道地址：</td>
                                <td>
                                    <input autocomplete="off" class="txt" maxlength="50" id="senderAddress" name="_fm.f._0.sendera" value="" type="text"> <span class="gray">不需要重复填写省/市/区</span>
                				</td>
                            </tr>
                			<tr>
                				<td class="ar" height="30" width="90">手机：</td>
                                <td>
                					<input autocomplete="off" class="txt" maxlength="15" id="senderMobile" name="_fm.f._0.senderm" value="" type="text"> <span class="orange">手机与固话必须填写其中的一项</span>
                				</td>
                            </tr>
                			<tr>
                				<td class="ar" height="30" width="90">电话号码：</td>
                                <td>
                					<input autocomplete="off" style="width:60px;" class="txt gray" maxlength="5" id="senderAreaCode" name="_fm.f._0.sender" value="" hint="区号" type="text">
                					<input autocomplete="off" style="width:118px;" class="txt gray" maxlength="10" id="senderTel" name="_fm.f._0.sendert" value="" hint="电话号" type="text">
                					<input autocomplete="off" style="width:60px;" class="txt gray" maxlength="6" id="senderTelExt" name="_fm.f._0.senderte" value="" hint="分机号" type="text"> 
                				</td>
                            </tr>
                        </tbody></table>
						<input name="_fm.f._0.senderi" id="senderId" value="" type="hidden">
                    </div>
                    <div class="clr"></div>
            	</div>
				<div class="bordertop">
                    <div class="title">
                        <span class="wtitle">收货方</span>
						<span class="mgl10 gray">为了您货物安全，请填写完整、准确信息</span>
        			</div>
        	        <div class="content">
            			<table>
            				<tbody><tr>
            					<td class="ar" height="30" width="90"><span class="red">*</span>联系人：</td>
            					<td>
            						<input class="txt" maxlength="50" id="receiver" name="_fm.f._0.recei" value="" type="text">
            						<a aliclickinited="true" id="choseReceiverBtn" rel="logined_show" class="ipt_btn" href="javascript:;" aliclickkey="itu_tran__tab_selectreceiver"><span class="inner">选择</span></a>
            						<input checked="checked" name="_fm.f._0.a" value="Y" id="saveAsReceiverCheck" type="checkbox"><label class="input-label" for="addReceiver">保存到通讯录</label>
            					</td>
            				</tr>
            				<tr>
            					<td class="ar" height="30" width="90"><span class="red">*</span>公司：</td>
            					<td>
            						<input maxlength="50" class="txt" id="receiverCorp" name="_fm.f._0.r" value="" type="text">
            					</td>
            				</tr>
            				<tr>
            					<td class="ar" height="30" width="90"><span class="red">*</span>所在地：</td>
            					<td>
									<input aria-haspopup="true" aria-autocomplete1="list" role="textbox" autocomplete="off" class="alp-area-text ui-autocomplete-input" id="receiver-area" type="text">
									<div style="display: none;" id="receiver-area-select" class="area-tab"><ul class="h"><li class="s-tab-t current" index="0"><span class="inner">常用</span></li><li class="s-tab-t" index="1"><span class="inner">省</span></li><li class="s-tab-t" index="2"><span class="inner">市</span></li><li class="s-tab-t" index="3"><span class="inner">区县</span></li><span style="display: none;" class="alp-icon alp-close alp-close-area"></span><div class="c"></div></ul><div style="display: block;" index="0" class="s-tab-b"><ul><li><a code="310100" class="panel-item" href="javascript:;">上海市</a></li><li><a code="440300" class="panel-item" href="javascript:;">深圳市</a></li><li><a code="110100" class="panel-item" href="javascript:;">北京市</a></li><li><a code="440100" class="panel-item" href="javascript:;">广州市</a></li><li><a code="320500" class="panel-item" href="javascript:;">苏州市</a></li><li><a code="510100" class="panel-item" href="javascript:;">成都市</a></li><li><a code="441900" class="panel-item" href="javascript:;">东莞市</a></li><li><a code="330200" class="panel-item" href="javascript:;">宁波市</a></li><li><a code="120100" class="panel-item" href="javascript:;">天津市</a></li><li><a code="330100" class="panel-item" href="javascript:;">杭州市</a></li><li><a code="370200" class="panel-item" href="javascript:;">青岛市</a></li><li><a code="500100" class="panel-item" href="javascript:;">重庆市</a></li><li><a code="420100" class="panel-item" href="javascript:;">武汉市</a></li><li><a code="440600" class="panel-item" href="javascript:;">佛山市</a></li><li><a code="410100" class="panel-item" href="javascript:;">郑州市</a></li></ul><div class="c"></div></div><div style="display: none;" index="1" class="s-tab-b"></div><div style="display: none;" index="2" class="s-tab-b"></div><div style="display: none;" index="3" class="s-tab-b"></div><div class="c"></div></div>
									<input id="receiverProvince" name="_fm.f._0.re" value="" type="hidden">
									<input id="receiverCity" name="_fm.f._0.rec" value="" type="hidden">
									<input id="receiverCounty" name="_fm.f._0.rece" value="" type="hidden">
            					</td>
            				</tr>
    						<tr>
            					<td class="ar" height="30" width="90"><span class="red">*</span>街道地址：</td>
            					<td>
                					<input class="txt" maxlength="50" id="receiverAddress" name="_fm.f._0.receivera" value="" type="text"> <span class="gray">不需要重复填写省/市/区</span>
            					</td>
            				</tr>
            				<tr>
            					<td class="ar" height="30" width="90">手机：</td>
            					<td>
                                    <input class="txt" maxlength="15" id="receiverMobile" name="_fm.f._0.receiverm" value="" type="text"> <span class="orange">手机与固话必须填写其中的一项</span>
            					</td>
            				</tr>
            				<tr>
            					<td class="ar" height="30" width="90">电话号码：</td>
            					<td>
            						<input style="width:60px;" class="txt gray" maxlength="5" id="receiverAreaCode" name="_fm.f._0.receiv" value="" hint="区号" type="text">
            						<input style="width:118px;" class="txt gray" maxlength="10" id="receiverTel" name="_fm.f._0.receive" value="" hint="电话号" type="text">
            						<input style="width:60px;" class="txt gray" maxlength="6" id="receiverTelExt" name="_fm.f._0.receiver" value="" hint="分机号" type="text"> 
            					</td>
            				</tr>
                        </tbody></table>
            		</div>
            		<div class="clr"></div>
        		</div>
				<div class="bordertop">
        			<div class="title">
        				<span class="wtitle">货物信息</span>
        			</div>
        	        <div class="content">
            			<table>
                            <tbody><tr>
            					<td class="ar" height="30" width="90"><span class="red">*</span><label>货物名称：</label></td>
            					<td><input maxlength="50" id="goodsName" name="_fm.f._0.c" value="" class="txt" type="text"><a href="http://114.1688.com/kf/detail/20520192.html" target="_blank" class="blue mgl20">禁运品说明</a></td>
            				</tr>
            				<tr>
            					<td class="ar" height="30" width="90"><span class="red">*</span><label>包装总件数：</label></td>
            					<td><input maxlength="6" id="totalNumber" name="_fm.f._0.t" value="" class="txt" style="width:70px;" type="text"> 件</td>
            				</tr>
            				<tr>
            					<td class="ar" height="30" width="90"><label>总重量：</label></td>
            					<td>
            						<input class="txt vas_weight_txt" style="width:70px;" id="totalWeight" name="_fm.f._0.to" value="" maxlength="8" type="text"> 公斤
                                    &nbsp;&nbsp;<span class="gray">或</span>
    								&nbsp;&nbsp;总体积：<input class="txt" style="width:70px;" id="totalVolume" name="_fm.f._0.tot" value="" maxlength="8" type="text"> 立方米
                                    &nbsp;&nbsp;<span id="priceBy_div" class="weight-bold"></span>
									&nbsp;&nbsp;<span id="txtCountPrice" class="gray">用于估算运费</span>
            					</td>
            				</tr>
            				<tr>
            					<td class="ar" height="30" width="90"><label for="">注意事项：</label></td>
            					<td><textarea style="width:250px;height:60px;" name="_fm.f._0.rem" id="remark" class="txt"></textarea></td>
            				</tr>
                        </tbody></table>
            		</div>
            		<div class="clr"></div>
        		</div>
				<div class="bordertop">
        			<div class="title">
        				<span class="wtitle">支付方式</span>
        			</div>
        	        <div class="content">
            			<div class="r-box">
                            <input class="" name="_fm.f._0.p" value="0" checked="" type="radio"> <label for="payTypeSender" class="input-label">发货人支付（现付）</label>
                            <input class="mgl20" name="_fm.f._0.p" value="1" type="radio"> <label for="payTypeReceiver" class="input-label">收货人支付（到付）</label>
            			</div>
            		</div>
            		<div class="clr"></div>
        		</div>
            </div>
			<div class="submitButton">				<a id="goToSelectCorpButton" onmousedown="return aliclick(this,'?tracelog=itu_tran_creatform_fahuo_continu');" herf="javascript:;" class="btn pt10 pb10 pl20 pr20"><span class="inner">下一步</span></a>
            </div>
        </div>

</div>
</body>
</html>