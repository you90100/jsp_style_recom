<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>

<html lang="ko">
<head>
<meta charset="utf-8">
<title>웹 폼</title>
<style>

    
h1{
    margin:80px;
}

li {
	
	margin: 20px;
	
}

.a{ 
     border-color:/* #FFBB00; */#CE6D39; 
     border-width:5px; 
     box-shadow:2px 2px 5px 2px gray;
}

ul{ margin:20px; }
</style>
<script type="text/javascript">
	function chk() {
		if (frm.mem_pw.value != frm.mem_pw2.value) {
			alert("암호가 다릅니다");
			frm.mem_pw.focus();
			return false;
		}
		 return true; 
	}
	function winop() {
		if (!frm.mem_id.value) {
			alert("id를 입력하고 사용하세요");
			frm.id.focus();
			return false;
		}
		window.open("confirmId.do?mem_id=" + frm.mem_id.value, "",
				"width=600 height=300");
	}
</script>


</head>
<body>


<form action="updatePro.do" name="frm" onsubmit="return chk()">
	       
<fieldset >
<legend><h1>회원 정보 수정</h1></legend>

	
		<ul>
		    <li><h3>아이디:${mem_id}</h3></li>
			<input type="hidden" name="mem_id" value="${mem_id}">
			<li><label><input type="password" class="a" name="mem_pw"
					required="required" placeholder="비밀번호 재설정"></label></li>
			<li><label><input type="password" class="a" name="mem_pw2"
					required="required" placeholder="비밀번호 재설정 확인"></label></li>
			<li><label><input type="text" class="a" name="mem_name"
					required="required" placeholder="이름"></label></li>
			<li><label><input type="tel" class="a" name="mem_phone"
					required="required" placeholder="전화번호(xxx-xxxx-xxxx)"></label></li>
			<li><label><input type="text" class="a" name="mem_email"
					required="required" placeholder="이메일"></label></li>
			<li><label><input type="text" class="a" name="mem_addr"
					required="required" placeholder="주소"></label></li>
			<li><label class="" >체형</label> <select
				name="mem_body_type">
					<option value="1">통통</option>
					<option value="2">슬림</option>
					<option value="3">키작은</option>
					<option value="4">키큰</option>


			</select></li>
			
			 <li><label class="" name="mem_fav_loc">관심지역(중복 선택 가능)</label></li>
			 
            <label><input type="checkbox" name="mem_fav_loc" value="서울특별시">서울특별시</label>
			<label><input type="checkbox" name="mem_fav_loc" value="경기도">경기도</label>
			<label><input type="checkbox" name="mem_fav_loc" value="강원도">강원도</label><p>
			<label><input type="checkbox" name="mem_fav_loc" value="충청남도">충청남도</label>
			<label><input type="checkbox" name="mem_fav_loc" value="충청북도">충청북도</label>
			<label><input type="checkbox" name="mem_fav_loc" value="전라남도">전라남도</label><p>
			<label><input type="checkbox" name="mem_fav_loc" value="전라북도">전라북도</label>
			<label><input type="checkbox" name="mem_fav_loc" value="경상남도">경상남도</label>
			<label><input type="checkbox" name="mem_fav_loc" value="경상북도">경상북도</label><p>	
			<label><input type="checkbox" name="mem_fav_loc" value="제주도">제주도</label> 
          
          
			<li><label><input type="radio" name="mem_gender" value="1"
					required="required">남</label> <label><input type="radio"
					name="mem_gender" value="2" required="required">여</label></li>

			<li><input type="submit" value="확인"> <input type="reset"
				value="취소"></li>
		</ul>
	

</fieldset>
</form>

</body>
</html>