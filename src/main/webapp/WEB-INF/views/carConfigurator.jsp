<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html lang="en" ng-app="EbxApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Ebx Demo</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1">
        
        <link rel='shortcut icon' href='gui/favicon.ico' type='image/x-icon'/>

        <link href="files/font.css" rel="stylesheet" type="text/css">
		<link href="files/car.css" rel="stylesheet" type="text/css">
        <link href="files/configurator.css" rel="stylesheet" type="text/css">
        <link href="files/checkbox.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="files/history.css">

		<script type="text/javascript"> 
			var CONTEXT_ROOT = '<%= request.getContextPath() %>'; 
		</script> 
		<script type="text/javascript" src="files/history.js"></script>
		<script type="text/javascript" src="files/Detector.js"></script>
		<script type="text/javascript" src="files/RequestAnimationFrame.js"></script>
        <script type="text/javascript" src="files/Stats.js"></script>
		<script type="text/javascript" src="files/three.min.js"></script>

		<script type="text/javascript" src="files/CarVisualizer.min.js"></script>

        <script type="text/javascript" src="vendor/jquery.min.js"></script>
        <script type="text/javascript" src="vendor/angular.min.js"></script>

        <script type="text/javascript" src="files/configurator.js"></script>
    </head>
	<body onload="init()">
        <div class="Ebx-logo">
            <img src="files/Ebx.png" />
        </div>

        <div class="configurator" ng-controller="ConfiguratorCtrl" ng-cloak>
            <div class="total">\${{ totalPrice() }}</div>
            <div class="overlay"></div>
            <div class="content">
                <h1>Avalon XLE</h1>
                <h2>3.5L V6, 6-Speed Automatic</h2>

                <h3>COLORS</h3>
                <ul class="color-list"> 
                    <li class="color-item" 
                        ng-repeat="color in car.carColors track by color.id" 
                        style="background-color: \#{{ color.colorHexCode }}"
                        ng-click="selectColor(color);">
                    </li>
                </ul>

                <h3>ACCESSORIES</h3>
                <ul class="accessory-list"> 
                    <li class="accessory-item" ng-repeat="accessory in car.accessories track by accessory.id">
                        <div class="checkbox column">
                            <input type="checkbox" 
                                id="select-{{ accessory.id }}" 
                                class="checkbox-input"
                                ng-checked="accessory.selected"
                                ng-click="accessory.selected = !accessory.selected">
                            <label class="checkbox-label" for="select-{{ accessory.id }}">
                                <div class="checkbox-inner"></div>
                                <div class="checkbox-check"></div>
                            </label>
                        </div>

                        <div class="description column">{{ accessory.description }}</div>
                        <div class="price column">\${{ accessory.price }}</div>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>