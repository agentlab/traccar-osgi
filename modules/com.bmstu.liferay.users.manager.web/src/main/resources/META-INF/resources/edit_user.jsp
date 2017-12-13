<%@page import="com.bmstu.users.manager.service.TraccarUserLocalServiceUtil"%>
<%@page import="com.bmstu.users.manager.model.TraccarUser"%>
<%@include file="/init.jsp" %>

<% 

long traccarUserId = ParamUtil.getLong(renderRequest, "traccarUserId");

TraccarUser traccarUser = null;
if (traccarUserId > 0) {
	traccarUser = TraccarUserLocalServiceUtil.getTraccarUser(traccarUserId);
}

%>

<portlet:renderURL var="viewURL">

<portlet:param name="mvcPath" value="/view.jsp"></portlet:param>

</portlet:renderURL>

<portlet:actionURL name="addTraccarUser" var="addTraccarUserURL"></portlet:actionURL>

<aui:form action="<%= addTraccarUserURL %>" name="<portlet:namespace />fm">

<aui:model-context bean="<%= traccarUser %>" model="<%= TraccarUser.class %>" />

    <aui:fieldset>

        <aui:input name="name" />
        <aui:input name="password" />
        <aui:input name="email" />
        <aui:input name="traccarUserId" type="hidden" />

    </aui:fieldset>

    <aui:button-row>

        <aui:button type="submit"></aui:button>
        <aui:button type="cancel" onClick="<%= viewURL.toString() %>"></aui:button>

    </aui:button-row>
</aui:form>