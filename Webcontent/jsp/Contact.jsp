<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file="../header.html" %>
    
    <p>お問い合わせフォーム</p>
    
    <p>
 	<form action="../Servlet/Contact" method="post">
    <p>氏名<br><input type="text" name="name"></p>
	<p>会社名<br><input type="text" name="company"></p>
    <p>メールアドレス<br><input type="text" name="email"></p>
	<p> お問い合わせ内容<br><textarea name="text" cols="30" rows="5"></textarea></p>
    
    <p>
    メルマガ種類<br>
    <input type="checkbox" name="mailmagazine">総合案内
	<input type="checkbox" name="mailmagazine">セミナー案内<br>
	<input type="checkbox" name="mailmagazine">求人採用情報<br>
	</p>
	
	<p>
	資料請求希望
	<input type="radio" name="documentrequest" value="Yes">Yes
	<input type="radio" name="documentrequest" value="No">No<br>
    </p>
    
    <input type="submit" value="送信">
    </form>
    
        <%@include file="../footer.html" %>
        