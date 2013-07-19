<%@ include file="partials/header.jsp" %>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container-fluid topcontainer">
    <div class="row-fluid">
        <h1>${subtitle}</h1>
    </div>
    <c:if test="${!empty message}">
    <div class="row-fluid">
        <c:if test="${messageType == 'error'}">
        <div class="alert alert-error">
            <p>
                <i class="icon-exclamation-sign text-danger icon-2x"></i>
                <c:out value="${message }"></c:out>
            </p>
        </div>
        </c:if>
        <c:if test="${ messageType == 'success' }">
        <div class="alert alert-success">
            <p>
                <i class="icon-thumbs-up-alt text-success icon-2x"></i>
                <c:out value="${message }"></c:out>
            </p>
        </div>
        </c:if>
    </div>
    </c:if>
    <div class="row-fluid">
        <c:url value="/users" var="insertpath" />
        <form:form method="post" action="${insertpath}" class="form-horizontal"
            commandName="userrec">
            <legend>User Records</legend>
            <!--  -->
            <div class="control-group">
                <label class="control-label">First Name</label>
                <div class="controls">
                    <form:input path="firstName" type="text"
                        placeholder="First Name" class="span5"/>
                </div>
            </div>
            <!--  -->
            <div class="control-group">
                <label class="control-label">First Name</label>
                <div class="controls">
                    <form:input path="lastName" type="text"
                        placeholder="Last Name" class="span5"/>
                </div>
            </div>
            <!--  -->
            <div class="control-group">
                <label class="control-label">First Name</label>
                <div class="controls">
                    <form:input path="email" type="text"
                        placeholder="Email" class="span5"/>
                </div>
            </div>
            
            <div class="control-group">
                <label class="control-label"></label>
                <div class="controls">
		            <form:button type="submit" name="submitButton" 
		                class="btn btn-success">Submit</form:button>
                </div>
            </div>
        </form:form>
    </div>
    <!--  retrieve all records -->
    <div class="row-fluid">
        <table class="table table-bordered table-striped table-hovered">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
            <c:forEach var="rec" items="${userrecs }">
            <tr>
                <td>
                    <c:out value="${rec.firstName }"></c:out>
                </td>
                <td>
                    <c:out value="${rec.lastName }"></c:out>
                </td>
                <td>
                    <c:out value="${rec.email }"></c:out>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>

<%@ include file="partials/footer.jsp" %>