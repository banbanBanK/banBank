var path = $("#path").val();
var imgYes = "<img width='15px' src='../images/y.png' />";
var imgNo = "<img width='15px' src='../images/n.png' />";
/**
 * 提示信息显示
 * element:显示提示信息的元素（font）
 * css：提示样式
 * tipString:提示信息
 * status：true/false --验证是否通过
 */
function validateTip(element,css,tipString,status){
	element.css(css);
	element.html(tipString);
	
	element.attr("validateStatus",status);
}
var referer = $("#referer").val();

var customerId = null;
var customerIdNext=null;
var password = null;
var passwordNext=null;
var rPassword = null;
var rPasswordNext=null;
var signupBtn=null;
var province=null;

$(function() {
			customerId = $("#customerId");
			customerIdNext=$("#customerIdNext");
			password = $("#password");
			rPassword = $("#rPassword");
			passwordNext=$("#passwordNext");
			rPasswordNext=$("#rPasswordNext");
            signupBtn = $("#signupBtn");
            province=$("#province");
            
            customerId.bind("blur", function() {
  	//ajax后台验证--userCode是否已存在
  	
  	$.ajax({
  		type: "POST", //请求类型
  		url: "../jsp/customer-add.do", //请求的url
  		data:{customerId:customerId.val()}, //请求参数
  		dataType: "json", //ajax接口（请求url）返回的数据类型
  		success: function(data) { //data：返回数据（json对象）
  			if(data) { //账号已存在，错误提示
  				validateTip(customerIdNext, {
  					"color": "red"
  				}, imgNo + " 该账号已存在", false);
  			} else { //账号可用，正确提示
  				validateTip(customerIdNext, {
  					"color": "green"
  				}, imgYes+"账号可用", true);
  			}
  		},
  	});

  }).bind("focus", function() {
  	//显示友情提示
  	validateTip(customerIdNext, {
  		"color": "#666666"
  	}, "* 用户名是您登录系统的账号", false);
  });
  
			password.bind("focus", function() {
				validateTip(passwordNext, {
					"color": "#666666"
				}, "* 密码长度必须是大于等于6", false);
			}).bind("blur", function() {
				if(password.val() != null && password.val().length > 5 ) {
					validateTip(passwordNext, {
						"color": "green"
					}, imgYes, true);
				} else {
					validateTip(passwordNext, {
						"color": "red"
					}, imgNo + " 密码输入不符合规范，请重新输入", false);
				}
			});

			rPassword.bind("focus", function() {
				validateTip(rPasswordNext, {
					"color": "#666666"
				}, "* 请输入与上面一致的密码", false);
			}).bind("blur", function() {
				if(password.val() == rPassword.val()) {
					validateTip(rPasswordNext, {
						"color": "green"
					}, imgYes, true);
				} else {
					validateTip(rPasswordNext, {
						"color": "red"
					}, imgNo + " 两次密码输入不一致，请重新输入", false);
				}
			});
			
			signupBtn.bind("click", function() {
		    if(passwordNext.attr("validateStatus") != "true") {
				password.blur();
			} else if(rPasswordNext.attr("validateStatus") != "true") {
				rPassword.blur();
			} else {
				
					$("#signup").submit();
				
			}
			});
			province.bind("focus",function(){
			$.ajax({
	type: "POST",
	url: "../jsp/select-province.do",
	dataType: "json",
	
	success: function(data) {
		var selectid = $('#province');
		var html = '';
		for(var i = 0; i < data.length ; i++) {
			html += "<option value='" + data[i].addressId + "'>" + data[i].addressName + "</option>"
		}
		selectid.html(html);
	},
    });
   });
});