<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/login.css" type="text/css" />
</head>

<body>
<div id="header">  
    <div id="login"> 
        <form >
            <label for="name">用户名/邮箱:</label>
            <input type="text" name="email" class="required"/>
            <label for="password">密码:</label>
            <input type="password" name="password" />
            <p class="remember"><input type="checkbox" class="checkbox"/>下次自动登录</p>
            <input type="submit" class="submit" value="Sign In" />
            <p><a href="#" class="tooltip">忘记密码？<span>点击这里重设密码(*^__^*)</span></a></p>
        </form>
    </div> 
</div>
</body>
</html>
