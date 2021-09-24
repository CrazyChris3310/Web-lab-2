<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="dist/style.css">
</head>
<body>

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
                    <td><label>X coordinate: </label></td>
                    <td>
                        <input type="text" id="x-input" name="xCord" placeholder="Введите число от -5 до 3">

                    </td>
                    <td id="graph-td" rowspan="4">
                        <!-- TODO: add opportunity to click on graph -->
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

                            <line
                                    x1="20"
                                    x2="20"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="40"
                                    x2="40"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="60"
                                    x2="60"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="80"
                                    x2="80"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="100"
                                    x2="100"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="120"
                                    x2="120"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="160"
                                    x2="160"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="180"
                                    x2="180"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="200"
                                    x2="200"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="220"
                                    x2="220"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="240"
                                    x2="240"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="260"
                                    x2="260"
                                    y1="51%"
                                    y2="49%"
                                    stroke="black"
                                    stroke-width="1"
                            />

                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="20"
                                    y2="20"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="40"
                                    y2="40"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="60"
                                    y2="60"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="80"
                                    y2="80"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="100"
                                    y2="100"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="120"
                                    y2="120"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="160"
                                    y2="160"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="180"
                                    y2="180"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="200"
                                    y2="200"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="220"
                                    y2="220"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="240"
                                    y2="240"
                                    stroke="black"
                                    stroke-width="1"
                            />
                            <line
                                    x1="49%"
                                    x2="51%"
                                    y1="260"
                                    y2="260"
                                    stroke="black"
                                    stroke-width="1"
                            />


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
                                    fill="green"
                                    fill-opacity="0.5"
                                    class="hidden"
                                    id="graph-path"
                            />

                            <circle class="hidden" cx="25" cy="75" r="5" fill="red" />
                        </svg>
                    </td>
                </tr>
                <tr>
                    <td><label>Y coordinate: </label></td>
                    <td>
                        <div id="buttons-area">
                            <input type="hidden" name="yCord" id="y-input">
                            <div id="selected-y-cord"></div>
                            <button type="button" value="-4">-4</button>
                            <button type="button" value="-3">-3</button>
                            <button type="button" value="2">-2</button>
                            <button type="button" value="1">-1</button>
                            <button type="button" value="0">0</button>
                            <button type="button" value="1">1</button>
                            <button type="button" value="2">2</button>
                            <button type="button" value="3">3</button>
                            <button type="button" value="4">4</button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label>Radius: </label></td>
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
        <table class="results hidden">
            <tr>
                <th>X координата</th>
                <th>Y координата</th>
                <th>Радиус</th>
                <th>Текущая дата</th>
                <th>Время выполнения скрипта</th>
                <th>Попадание</th>
            </tr>
            <tr>
                <td>2</td>
                <td>3</td>
                <td>1</td>
                <td>4213</td>
                <td>324234</td>
                <td>2no</td>
            </tr>
            <tr>
                <td>2</td>
                <td>3</td>
                <td>1</td>
                <td>4213</td>
                <td>324234</td>
                <td>2no</td>
            </tr>
        </table>
    </div>
</div>

<script src="scripts/jquery-3.6.0.min.js"></script>
<script src="scripts/data-validation.js"></script>

</body>
</html>