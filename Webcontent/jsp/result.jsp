<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>お名前：<%= request.getAttribute( "name" ) %></p>

<p>会社名：<%= request.getAttribute( "company" ) %></p>
<p>メールアドレス：<%= request.getAttribute( "email" ) %></p>
<p>お問い合わせ内容：<%= request.getAttribute( "text" ) %></p>
<p>メールマガジン：<%= request.getAttribute( "mailmagazine" ) %></p>
String[] mailmagazine=request.getParameterValues("mailmagazine");


<p>資料送付希望：<%= request.getAttribute( "doqumentrequest" ) %></p>

if (doqumentrequest!=("Yes")) {
			request.getRequestDispatcher("../jsp/doqumentrequest.jsp").include(request, response);
		}else {
			request.getRequestDispatcher("../jsp/result.jsp").include(request, response);
		}
	

</body>
</html>