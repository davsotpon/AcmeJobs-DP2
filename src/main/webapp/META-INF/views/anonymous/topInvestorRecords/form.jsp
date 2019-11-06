
<%@page language="java" %>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<acme:form readonly="true">
	<acme:form-textbox code="anonymous.topInvestorRecords.form.label.name" path="name"/> 
	<acme:form-textbox code="anonymous.topInvestorRecords.form.label.sector" path="sector"/>
	<acme:form-money code="anonymous.topInvestorRecords.form.label.investingStatements" path = "investingStatements"/>
	<acme:form-double code="anonymous.topInvestorRecords.form.label.ratings" path="ratings"/>
	
	<acme:form-return code="anonymous.topInvestorRecords.form.button.return"/> 
	
</acme:form>