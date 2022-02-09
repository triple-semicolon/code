<%@ page contentType="text/plain; charset=utf-8"
    pageEncoding="EUC-KR"
    import="org.json.*"%><%
    
    String type = request.getParameter("type");
    
    String content = null;
    if( type != null ) {
    	if( type.equals("1") ) {
    		content = "입금 안내 드립니다. 기업은행 010-3344-5566 계좌로 0000원을 입금해 주세요.\r\n\r\n"+
    			"입금시 입금자 이름 뒤에 제가 지정하는 단어를 넣어주시면 구별에 도움이 됩니다.\r\n\r\n" +
    			"홍길동 딸기";
    	}
    	else if( type.equals("2") ) {
    		content = "문의주신 내용은 가능합니다. 비용은 0000원 입니다.";
    	}    	
    }

    JSONObject json = new JSONObject();    
    if( content != null ) {
    	json.put("success", true );
    	json.put("content", content );
    }
    else {
    	json.put("success", false ); 
    }
    out.print( json.toString() );
%>