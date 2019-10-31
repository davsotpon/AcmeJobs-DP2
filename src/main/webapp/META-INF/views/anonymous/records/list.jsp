<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list>
	<acme:list-column code="authenticated.announcement.list.label.company" path="company" width="20%"/>
	<acme:list-column code="authenticated.announcement.list.label.sector" path="sector" width="20%" />
	<acme:list-column code="authenticated.announcement.list.label.CEO" path="CEO" width="20%" />
	<acme:list-column code="authenticated.announcement.list.label.activities" path="activities" width="20%" />
	<acme:list-column code="authenticated.announcement.list.label.web" path="web" width="20%" />
	<acme:list-column code="authenticated.announcement.list.label.phone" path="phone" width="20%" />
	<acme:list-column code="authenticated.announcement.list.label.email" path="email" width="20%" />
	<acme:list-column code="authenticated.announcement.list.label.incorporated" path="incorporated" width="20%" />
	<acme:list-column code="authenticated.announcement.list.label.stars" path="stars" width="20%" />
	
</acme:list>