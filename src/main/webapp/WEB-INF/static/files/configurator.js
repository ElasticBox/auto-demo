
var EbxApp = angular.module('EbxApp', []);
EbxApp.controller('ConfiguratorCtrl', function($scope, $http) {

    $scope.car = [];
    $scope.basePrice = 32560;
    $scope.selectedColor = {
        price: 0
    };

    $http.get(CONTEXT_ROOT + '/car/3')
        .success(function(data) {
            $scope.loaded = true;
            $scope.car = data;
        }).error(function(err) {
            alert(err);
        });

    $scope.changeColor = function(hexColor) {
        var hex = '0x' + ('000000' + hexColor);

        // CarVisualizer global variables
        window.hex = hex;
        window.bpd && window.bpd();
    };

    $scope.selectColor = function(color) {
        $scope.changeColor(color.colorHexCode); 
        $scope.selectedColor = color;
    };

    $scope.totalPrice = function() {
        function formatNumber(num) {
            return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")
        }

        var price = 0,
            accessories = $scope.car.accessories ? $scope.car.accessories.filter(function(accessory){
                if(accessory.selected) {
                    price += accessory.price;
                }
                return accessory.selected;
            }) : [];

        return formatNumber($scope.basePrice + price + $scope.selectedColor.price);
    };
});