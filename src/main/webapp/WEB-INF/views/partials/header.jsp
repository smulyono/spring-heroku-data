<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<html lang="en" >
<head>
  <title>${title }</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css"
    rel="stylesheet" />
  <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.min.css"
    rel="stylesheet" />
  <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css" 
    rel="stylesheet" />
    <style>
            .topcontainer {
                margin-top : 50px;
            }
    </style>
</head>

<body>

<div class="navbar navbar-fixed-top navbar-inverse">
    <div class="navbar-inner">
        <div class="container-fluid">
        <button type="button" class="btn btn-navbar"
                data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!--  start of navbar entry -->
        <a class="brand" href="/"><i class="icon-filter icon-white"></i>
            ${title }
        </a>
        <div class="nav-collapse collapse">
            <ul class="nav">
                <c:url value="/" var="homepage"></c:url>
                <c:url value="/users" var="userlist"></c:url>
                <c:if test="${empty selectedTab }">
                    <li class="active"><a href="${homepage }">Home</a></li>
                </c:if>
                <c:if test="${!empty selectedTab }">
                    <li><a href="${homepage }">Home</a></li>
                </c:if>
                
                
                <c:if test="${selectedTab == 'user' }">
                    <li class="active"><a href="${ userlist }">Users</a></li>
                </c:if>
                <c:if test="${selectedTab != 'user' }">
                    <li><a href="${ userlist }">Users</a></li>
                </c:if>
            </ul>        
        </div>
        </div>
    </div>
</div>

