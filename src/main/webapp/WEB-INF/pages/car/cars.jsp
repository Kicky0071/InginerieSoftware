<%-- 
    Document   : cars.jsp
    Created on : Nov 1, 2021, 9:19:19 AM
    Author     : kicky
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <form action="${pageContext.request.contextPath}/Cars/Update" method="POST">
        <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Cars/Create" role="button">AddCar</a>
        <button class="btn btn-danger" type="submit">Delete Cars</button>
        <c:forEach var="car" items="${cars}" varStatus="status" >
            <div class="row">
                <div class="col-md"><input type="checkbox" name="car_ids" value = ${car.id}/></div>
                <div class="col-md-3">${car.licensePlate}</div>
                <div class="col-md-3">${car.parkingSpot}</div>
                <div class="col-md-3">${car.username}</div>
                <div class="col-md-2">
                    <a class="btn btn-secondary btn-lg" href="${pageContext.request.contextPath}/Cars/Update?id=${car.id}" role="button">Edit Car</a>
                </div>
            </div>
        </c:forEach>
    </form>
    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>