<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
</head>
<body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("가입 완료 되었습니다.환영 합니다!");  
		location.href="main.do";

	</script>
</c:if>
<c:if test="${result == 0 }">  
	<script type="text/javascript">
		alert("가입 실패입니다.");  
		location.href="joinForm.do";
	</script>
</c:if>


</body>
</html>