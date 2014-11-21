<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!-- ���������� ǥ���ϴ� jsp�����Դϴ�. controller���� url ������ �� �� �⺻��θ�  /WEB-INF/views/�� ��ó���ϱ⶧����
views ������ ��Ʈ�� ���� ��μ����� �ؾ� �մϴ�.-->
<html>
<head>
	<title>���� �����Դϴ�.</title>
</head>
<body>
<!-- ������� ���� ����. Calendaruser�� ������ �޾ƿɴϴ�. c�±׸� �̿��Ͽ�, �ݺ��Ǵ� �κ��� �ۼ��Ͽ����ϴ�. -->
<h1>
	Calendaruser Info 
</h1>
<table border=1>
<tr>
<td><h2>Num</h2></td>
<td><h2>Id</h2></td>
<td><h2>Name</h2></td>
<td><h2>Email</h2></td>
</tr>
<c:forEach var="calendaruser" items="${caluser}" varStatus="status">
<tr>
	<td align="center" class="listtd"><c:out value="${status.count}"/></td>
	<td align="center" class="listtd"><c:out value="${calendaruser.id}"/></td>
	<td align="left" class="listtd"><c:out value="${calendaruser.name}"/> </td>
	<td align="center" class="listtd"><c:out value="${calendaruser.email}"/> </td>
</tr>
</c:forEach>
</table>
<!-- ������� ���� ����. Event�� ������ �޾ƿɴϴ�. c�±׸� �̿��Ͽ�, �ݺ��Ǵ� �κ��� �ۼ��Ͽ����ϴ�. -->
<h1>
	Event Info
</h1>
<table border=1>
<tr>
<td><h2>Num</h2></td>
<td><h2>Id</h2></td>
<td><h2>Time</h2></td>
<td><h2>Summary</h2></td>
<td><h2>Description</h2></td>
<td><h2>Owner</h2></td>
<td><h2>Likes</h2></td>
<td><h2>Level</h2></td>
</tr>
<c:forEach var="events" items="${event}" varStatus="status">
<tr>
	<td align="center" class="listtd"><c:out value="${status.count}"/></td>
	<td align="center" class="listtd"><c:out value="${events.id}"/></td>
	<td align="left" class="listtd"><c:out value="${events.when.getTime()}"/> </td>
	<td align="left" class="listtd"><c:out value="${events.summary}"/> </td>
	<td align="left" class="listtd"><c:out value="${events.description}"/> </td>
	<td align="center" class="listtd"><c:out value="${events.owner.id}"/></td>
	<td align="center" class="listtd"><c:out value="${events.numLikes}"/></td>
	<td align="center" class="listtd"><c:out value="${events.eventLevel}"/></td>
</tr>
</c:forEach>
</table>
<!-- ������� ���� ����. EventAttendee�� ������ �޾ƿɴϴ�. c�±׸� �̿��Ͽ�, �ݺ��Ǵ� �κ��� �ۼ��Ͽ����ϴ�. -->
<h1>
	EventAttendee Info 
</h1>
<table border=1>
<tr>
<td><h2>Num</h2></td>
<td><h2>Id</h2></td>
<td><h2>Event_Id</h2></td>
<td><h2>Attendee_Id</h2></td>
</tr>
<c:forEach var="attendees" items="${attendee}" varStatus="status">
<tr>
	<td align="center" class="listtd"><c:out value="${status.count}"/></td>
	<td align="center" class="listtd"><c:out value="${attendees.id}"/></td>
	<td align="center" class="listtd"><c:out value="${attendees.event.id}"/></td>
	<td align="center" class="listtd"><c:out value="${attendees.attendee.id}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>
