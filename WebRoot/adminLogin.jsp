<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理员登录</title>
<link href="css/Default.css" type=text/css rel=stylesheet>
<link href="css/xtree.css" type=text/css rel=stylesheet>
<link href="css/User_Login.css" type=text/css rel=stylesheet>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta content="MSHTML 6.00.6000.16674" name=generator>
</head>
<body id=userlogin_body>
<div id=user_login>
<dl>
  <dd id=user_top>
  <ul>
    <li class=user_top_l></li>
    <li class=user_top_c></li>
    <li class=user_top_r></li>
  </ul>
  
  <dd id=user_main>
  <ul>
    <li class=user_main_l></li>
    <li class=user_main_c>
    
    <div class=user_main_box>
    <ul>
      <li class=user_main_text>用户名：</li>
      <li class=user_main_input><input class=TxtUserNameCssClass id=TxtUserName maxLength=20 name=TxtUserName></li>
    </ul>
    <ul>
      <li class=user_main_text>密 码： </li>
      <li class=user_main_input><input class=TxtPasswordCssClass id=TxtPassword type=password name=TxtPassword></li>
    </ul>
    <ul>
      <li class=user_main_text>Cookie保存时间：</li>
      <li class=user_main_input><select id=DropExpiration name=DropExpiration> 
        <option value=None selected>不保存</option>
        <option value=Day>保存一天</option> 
        <option value=Month>保存一月</option>
        <option value=Year>保存一年</option></select>
      </li>
    </ul>
    </div>
    
    </li>
    <li class=user_main_r><input class=IbtnEnterCssClass id=IbtnEnter style="border-top-width: 0px; border-left-width: 0px; border-bottom-width: 0px; border-right-width: 0px" onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("IbtnEnter", "", true, "", "", false, false))' type=image src="image/user_botton.gif" name=IbtnEnter>
    </li>
  </ul>
  
  <dd id=user_bottom>
  <ul>
    <li class=user_bottom_l></li>
    <li class=user_bottom_c><span style="margin-top: 40px">欢迎访问布可</span></li>
    <li class=user_bottom_r></li>
  </ul>
  </dd>
</dl>
</div>
<span id=ValrUserName style="display: none; color: red"></span>
<span id=ValrPassword style="display: none; color: red"></span>
<span id=ValrValidateCode style="display: none; color: red"></span>
<div id=ValidationSummary1 style="display: none; color: red"></div>
<div></div>
</body></html>
