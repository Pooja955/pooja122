<%-- pratyasha satapathy program for claclulating how many times a page hits --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">             
<title>insert titel here</title>
</head>
<body>
<%-- pratyasha satapathy putting if else if it hits one time it will print welcome to pooja profile is its hits count is more than one it will print welcome back to pooja life --%>
<% 
Integer hitsCount =(Integer)application.getAttribute("hitcounter");
if(hitsCount == null || hitsCount ==0){
	out.println("welcome to pooja profile");
	hitsCount = 1;
}else{
	out.println("welcome back to pooja profile");
	hitsCount +=1;
}
application.setAttribute("hitcounter",hitsCount);
%>
<p>total number of visits: <%= hitsCount%>>
</body>
</html>