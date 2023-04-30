<%-- 
    Document   : AdminModification
    Created on : Apr 11, 2023, 3:12:20 PM
    Author     : jqu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Modify User Information</title>
    <style>
      body {
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
      }
      .container {
        position: relative;
        max-width: 1200px;
        margin: 80px auto 0;
        padding: 0px;
        background-color: #fff;
        box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.1);
      }
      .container:before,
      .container:after {
        content: '';
        position: absolute;
        top: 0;
        bottom: 0;
        width: 0%;
        background-color: #0077b6;
        z-index: -1;
      }
      .container:before {
        left: -30%;
        transform: skewX(-15deg);
      }
      .container:after {
        right: 10%;
        transform: skewX(15deg);
      }
      h1 {
        text-align: center;
        font-size: 32px;
        font-weight: bold;
        color: #0077b6;
        margin-top: 0;
      }
      table {
        width: 100%;
        border-collapse: collapse;
        border: 3px solid #0077b6;
        margin-bottom: 16px;
        table-layout: fixed;
      }
      th {
        background-color: #0077b6;
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        padding: 10px;
        text-align: left;
      }
      td {
        padding: 10px;
        border: 1px solid #ccc;
        font-size: 16px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
      }
      input[type="text"] {
        display: block;
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border-radius: 4px;
        border: 1px solid #ccc;
        box-sizing: border-box;
        margin-bottom: 16px;
      }
      input[type="submit"] {
        background-color: #0077b6;
        color: #fff;
        border: none;
        padding: 10px 16px;
        font-size: 16px;
        border-radius: 4px;
        cursor: pointer;
        box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.1);
      }
      input[type="submit"]:hover {
        background-color: #005d8f;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Modify User Information</h1>
      <table>
        <thead>
          <tr>
            <th>User Name</th>
            <th>Password</th>
            <th>Access Level (Admin = 0 | Regular User = 1)</th>
            <th>&nbsp;</th>
          </tr>
        </thead>
        <tbody>
                <form action="ModifyUserCTL" method="post">
                    <c:forEach items="${members}" var="member">
                        <tr>
                            <td>
                                <input type="text" name="modifyAllUserName" value="${member.getUserName()}">
                            </td>
                            <td>
                                <input type="text" name="pwd" value="${member.getUserPassword()}">
                            </td>
                            <td>
                                <input type="text" name="AccessLevel" value="${member.getAccessLevel()}">
                            </td> 
                            <td>
                            <input type="submit" value="Confirm Changes" id="submit">
                            </td>
                        </tr>
                    </c:forEach>
                 </form>
            </tbody>
        </table>
    </div>
	</body>
</html>
