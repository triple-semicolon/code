<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
window.onload = function(){
	var btn_1 = document.getElementById("btn_1");
	btn_1.onclick = function() {
		fill( 1 );
	};
	
	var btn_2 = document.getElementById("btn_2");
	btn_2.onclick = function() {
		fill( 2 );
	};
};

function fill( no ) {
	var xhr = new XMLHttpRequest()
	xhr.onreadystatechange = function(){
		if( xhr.readyState == 4 ) {
			if( xhr.status == 200 ) {
				var rt = xhr.responseText;
				var json = window.eval("("+rt+")");
				if( json.success ) {
					document.fill.content.value = json.content;	
				} else {
					document.fill.content.value = '[오류] fill2.jsp 의 ajax 응답이 유효하지 않음';
				}
			}
		}
	};
	xhr.open('GET','fill2.jsp?type='+no, true );
	xhr.send( null );
}
</script>
</head>
<body>
	<form name="fill" method="POST" action="fill_add2.abc">
		<textarea name="content" rows="8" cols="50"></textarea>
		<input type="submit"/>
	</form>
	
	<input id="btn_1" type="button" value="입금요망"/>
	<input id="btn_2" type="button" value="가능"/>
</body>
</html>