<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>������</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">
  <script type="text/javascript">
    function checkPwd(){
		var password1 = document.getElementById("password1");
		var password2 = document.getElementById("password2");
		var checkPwd = document.getElementById("checkPwd");
		if(password1.value!=password2.value){
			checkPwd.style.color="red";
			checkPwd.innerHTML="�����������벻һ��!";
			return false;
		}else{
			checkPwd.style.color="green";
			checkPwd.innerHTML="������������һ��!";
			return true;
		}
	}
  </script>
  </head>
  
  <body>
    <form action="updataPwd">
      <table>
      <tr>
                    		<td class="label">����:</td>
                    		<td><input type="password" id="password1" name="password" class="contact_input" onFocus="clearPwd()" onBlur="checkPassword()" /></td>
                    		<td class="remind" id="pwdRemind"><span style="color: red">*</span><span style="color:black">��Ӣ����ĸ������(6-16)�ַ����</span></td>
                    	</tr>
                    	<tr>
                    		<td class="label">ȷ������:</td>
                    		<td> <input type="password" id="password2" name="password" class="contact_input" onBlur="checkPwd()" /></td>
                    		<td id="checkPwd" class="remind">&nbsp;</td>
                    	</tr>
      
      </table>
 <input type="submit" value="ȷ��" onBlur="checkPwd()">
    </form>
  </body>
</html>
