
<%@page language="java" %>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<acme:form readonly="true">
	<acme:form-textbox code="authenticated.announcement.form.label.title" path="title"/> 
	<acme:form-moment code="authenticated.announcement.form.label.moment" path="moment"/>
	<acme:form-moment code="authenticated.announcement.form.label.deadline" path="deadline"/>
	<acme:form-textarea code="authenticated.announcement.form.label.text" path="text"/>
	<acme:form-money code="authenticated.announcement.form.label.money" path="money"/>
	<acme:form-hidden code="authenticated.announcement.form.label.ticker" path="ticker"/>
	<acme:form-return code="authenticated.announcement.form.button.return"/> 
	
</acme:form>