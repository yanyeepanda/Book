<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新用户注册</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/menu.css" />
<script type="text/javascript">
	function enable(){
		var terms = document.getElementById("terms");
		var register = document.getElementById("register");
		if(terms.checked){
			register.disabled=false;
		}
	}
	function checkName(){
		var patrn=/^[^`~!@#$%^&*()+-=|\\\[\]\{\}:;\'\,.<>/? 0-9]{2,19}$/; 
		if (!patrn.exec(s)){
			 
			 return false;
		}else{	 
			 return true;
		}
	}
	function checkAll(){
		document.register_form.register.submit();
	}
</script>
</head>
<body>
<div id="wrap">
		
		<%@include file="head.jsp" %>    
       <div class="center_content">
       	<div class="left_content">
       		<div class="crumb_nav">
           		 <a href="index.jsp">布可网</a> &gt;&gt;新用户注册
            </div>
            <div class="title"><span class="title_icon"><img src="image/exchange.gif" alt="" title="" /></span>请填写下列信息</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
            
            </p>
            	
              	<div class="contact_form">
                <div class="form_subtitle">我的信息</div>
                 <form name="register_form" action="register" method="post">          
                    <div class="form_row">
                    <label class="contact"><strong>用户名：</strong></label>
                    <input type="text" id="name" name="name" class="contact_input" />
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>密码：</strong></label>
                    <input type="password" id="password1" name="password" class="contact_input" />
                    </div> 
					
					<div class="form_row">
                    <label class="contact"><strong>再次输入密码：</strong></label>
                    <input type="password" id="password2" name="password" class="contact_input" />
                    </div> 
					
                    <div class="form_row">
                    <label class="contact"><strong>邮箱：</strong></label>
                    <input type="text" id="email" name="email" class="contact_input" />
                    </div>

					<div class="form_row">
                    <label class="contact"><strong>真实姓名：</strong></label>
                    <input type="text" id="trueName" name="trueName" class="contact_input" />
                    </div>
					
					<div class="form_row">
                    <label class="contact"><strong>性别：</strong></label>
                    <input type="radio" name="sex" checked="checked"/>男
                    <input type="radio" name="sex"  />女
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>出生日期</strong></label>
                    <input type="text" id="birthday" name="birthday" class="contact_input" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>地址：</strong></label>
                    <input type="text" id="address" name="address" class="contact_input" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>邮政编码：</strong></label>
                    <input type="text" id="mailCode" name="mailcode" class="contact_input" />
                    </div>
					
                    <div class="form_row">
                    <label class="contact"><strong>电话：</strong></label>
                    <input type="text" id="phone" name="phone" class="contact_input" />
                    </div>
                    
                     <div class="form_row">
                    <label class="contact"><strong>手机：</strong></label>
                    <input type="text" id="mphone" name="mphone" class="contact_input" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>密码保护问题：</strong></label>
                    <input type="text" id="question" name="question" class="contact_input" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>密码保护问题答案：</strong></label>
                    <input type="text" id="answer" name="answer" class="contact_input" />
                    </div>                  

                    <div class="form_row">
                        <div class="terms">
                        <input type="checkbox" id="terms" name="terms" onclick="enable()" />
                       我已经阅读并同意遵守相关守则。<a href="">布可网守则</a>                        </div>
                    </div> 

                    
                    <div class="form_row">
                    <input type="button" id="register" name="register" class="register" value="提交" disabled="disabled" onclick="checkAll()" />
                    </div>   
                  </form>     
                </div>           
          </div>	       
        <div class="clear"></div>
        </div><!--end of left content-->
         <%@include file="right.jsp" %>
         <!--end of right content-->
       <div class="clear"></div>
       </div><!--end of center content-->
       
      <%@include file="footer.jsp" %> 
</div>

</body>
</html>