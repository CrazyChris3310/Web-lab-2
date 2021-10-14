<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="utils.Data" %>
<%@ page import="java.util.Locale" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab 2</title>
    <link rel="stylesheet" href="dist/style.css">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
</head>
<body>

<jsp:useBean id="historyBean" class="utils.HistoryBean" scope="session"/>

<header>
    <div class="header_content">
        <div>№468</div>
        <div>Вахрушев Данил Сергеевич</div>
        <div>P3231</div>
    </div>
</header>

<div class="wrapper content">
    <div class="form_area">
        <form method="GET" action="${pageContext.request.contextPath}/main-page">
            <table id="form-table">
                <tr>
                    <td><label>X координата: </label></td>
                    <td>
                        <input type="text" id="x-input" name="xCord" placeholder="Введите число от -5 до 3">

                    </td>
                    <td id="graph-td" rowspan="4">
                        <svg
                                id="graphic"
                                viewBox="0 0 280 280"
                                width="280"
                                height="280"
                                xmlns="http://www.w3.org/2000/svg"
                        >
                            <rect width="100%" height="100%" fill="white" />
                            <line
                                    x1="0"
                                    x2="100%"
                                    y1="50%"
                                    y2="50%"
                                    stroke="black"
                                    stroke-width="2"
                            />
                            <line
                                    x1="97%"
                                    x2="100%"
                                    y1="47%"
                                    y2="50%"
                                    stroke="black"
                                    stroke-width="2"
                            />
                            <line
                                    x1="97%"
                                    x2="100%"
                                    y1="53%"
                                    y2="50%"
                                    stroke="black"
                                    stroke-width="2"
                            />

                            <line
                                    x1="50%"
                                    x2="50%"
                                    y1="0"
                                    y2="100%"
                                    stroke="black"
                                    stroke-width="2"
                            />
                            <line
                                    x1="47%"
                                    x2="50%"
                                    y1="3%"
                                    y2="0"
                                    stroke="black"
                                    stroke-width="2"
                            />
                            <line
                                    x1="53%"
                                    x2="50%"
                                    y1="3%"
                                    y2="0"
                                    stroke="black"
                                    stroke-width="2"
                            />

                            <c:forEach begin="20" end="260" step="20" varStatus="loop">

                                <line
                                        x1="${loop.count * 20}"
                                        x2="${loop.count * 20}"
                                        y1="49%"
                                        y2="51%"
                                        stroke="black"
                                        stroke-width="1"
                                />

                                <line
                                        x1="49%"
                                        x2="51%"
                                        y1="${loop.count * 20}"
                                        y2="${loop.count * 20}"
                                        stroke="black"
                                        stroke-width="1"
                                />
                            </c:forEach>


                            <path
                                    d="M 140 140
                      L 140 100
                      A 40 40 0 0 1 180 140
                      L 220 140
                      L 140 180
                      L 140 220
                      L 100 220
                      L 100 140
                      L 140 140"
                                    stroke="black"
                                    stroke-width="2"
                                    fill="blue"
                                    fill-opacity="0.5"
                                    class="hidden"
                                    id="graph-path"
                            />

                            <%
                                for (int i = historyBean.getHistory().size() - 1; i >= 0; --i) {
                                    Data element = historyBean.getHistory().get(i);
                                    double x = element.getX() * 40 + 140;
                                    double y = element.getY() * -40 + 140;
                                    String color;
                                    if (element == historyBean.getPrevious())
                                        color = element.getResult().equalsIgnoreCase("да") ? "green" : "red";
                                    else
                                        color = "grey";

                                    String circle = String.format("<circle cx=\"%s\" cy=\"%s\" r=\"5\" fill=\"%s\"></circle>",
                                            x, y, color);
                                    out.println(circle);
                                }
                            %>

                        </svg>
                    </td>
                </tr>
                <tr>
                    <td><label>Y координата: </label></td>
                    <td>
                        <div id="buttons-area">
                            <input type="hidden" name="yCord" id="y-input">
                            <div id="selected-y-cord"></div>
                            <button type="button" value="-4">-4</button>
                            <button type="button" value="-3">-3</button>
                            <button type="button" value="-2">-2</button>
                            <button type="button" value="-1">-1</button>
                            <button type="button" value="0">0</button>
                            <button type="button" value="1">1</button>
                            <button type="button" value="2">2</button>
                            <button type="button" value="3">3</button>
                            <button type="button" value="4">4</button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label>Радиус: </label></td>
                    <td>
                        <div id="radius-input">
                            <input type="radio" name="radius" id="r1" value="1">
                            <label for="r1">1</label>
                            <input type="radio" name="radius" id="r2" value="1.5">
                            <label for="r2">1.5</label>
                            <input type="radio" name="radius" id="r3" value="2">
                            <label for="r3">2</label>
                            <input type="radio" name="radius" id="r4" value="2.5">
                            <label for="r4">2.5</label>
                            <input type="radio" name="radius" id="r5" value="3">
                            <label for="r5">3</label>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>
                        <button id="check-btn">Проверить</button>
                    </td>
                    <td>
                        <div class="error-message hidden" id="x-cord-error">Неверная X координата</div>
                        <div class="error-message hidden" id="y-cord-error">Выберете значение Y</div>
                        <div class="error-message hidden" id="radius-error">Выберете значение R</div>
                        <div class="error-message hidden" id="point-unable">Невозможно определить координаты точки</div>
                    </td>
                </tr>
            </table>
            <input id="time-offset" name="time-offset" type="hidden">
        </form>
    </div>

    <div id="results-table-area">
        <table class="results ${historyBean.history.size() == 0 ? "hidden" : ""}">
            <tr>
                <th>X координата</th>
                <th>Y координата</th>
                <th>Радиус</th>
                <th>Текущая дата</th>
                <th>Время выполнения скрипта</th>
                <th>Попадание</th>
            </tr>

            <c:forEach items="${historyBean.history}" var="element">
                <tr>
                    <td>${element.x}</td>
                    <td>${element.y}</td>
                    <td>${element.radius}</td>
                    <td>${element.currentTime}</td>
                    <td>${element.duration}</td>
                    <td>${element.result}</td>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>

<script src="scripts/jquery-3.6.0.min.js"></script>
<script src="scripts/data-validation.js"></script>

</body>
</html>