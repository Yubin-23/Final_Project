<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/approval/style.css">
    <title>signMaker</title>
</head>
<body>
    <canvas id="jsCanvas" class="canvas"></canvas>
    <div class="controls">
        <div class="controls__range">
            <input type="range" id="jsRange"
             min="0.1" max="5.0" value="2.5" step="0.1"/>
        </div>
        <div class="controls__btns">
            <button id="jsMode">Fill</button>
            <button id="jsSave">Save</button></div>
        <div class="controls__colors" id="jsColors">
            <div class="controls__color jsColor" 
                 style="background-color: black;"></div>
            <div class="controls__color jsColor" 
                 style="background-color: red;"></div>
            <div class="controls__color jsColor" 
                 style="background-color: orange;"></div>
            <div class="controls__color jsColor" 
                 style="background-color: yellow;"></div>
            <div class="controls__color jsColor" 
                 style="background-color: green;"></div>
            <div class="controls__color jsColor" 
                 style="background-color: blue;"></div>
            <div class="controls__color jsColor" 
                 style="background-color: navy;"></div>
            <div class="controls__color jsColor" 
                 style="background-color: purple;"></div>
        </div>
    </div>
    <script src="/resources/js/approval/sign.js"></script>
</body>
</html>