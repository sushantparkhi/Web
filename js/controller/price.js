myApp.controller("PriceCtrl", function ($scope,$analytics, $http, $filter, $timeout, toaster, UberService, LyftService) {
    //Analytics Tracking
    $analytics.pageTrack('/price');

    //Variable Declaration Starts
    $scope.options = '';
    $scope.pickup = '';
    $scope.destination = '';
    $scope.destdetails = '';
    $scope.pickupdetails = '';
    $scope.destlatlng = '';
    $scope.pickuplatlng = '';
    $scope.showMap = false;
    $scope.showTabs = false;
    $scope.current = null;
    $scope.currentbool=true;
    $scope.maps = [];
    //Variable Declaration Ends

    //Watch for any changes in the drop down selection to get the coordinates of the location
    //Watch Start
    $scope.$watch("pickupdetails", function () {
        if ($scope.pickupdetails !== '') {
            $scope.pickuplatlng = $scope.pickupdetails.geometry.location;
        }
    });
    $scope.$watch("destdetails", function () {
        if ($scope.destdetails !== '') {
            $scope.destlatlng = $scope.destdetails.geometry.location;
        }
    });
    $scope.$watch("current", function () {
        console.log($scope.current);
        if($scope.current!==null){
            $scope.currentbool=false;
        }
    });
        //Watch Ends

    //Custom Sorting Function
    function comp(a, b) {
        if (a.estimated_cost_cents_min < b.estimated_cost_cents_min)
            return -1;
        if (a.estimated_cost_cents_min > b.estimated_cost_cents_min)
            return 1;
        return 0;
    }

    //Custom Sorting Function Ends

    //Compare Button Click Event
    $scope.compare = function () {
        toaster.pop('info', "Fetching Data...", "Please Wait. Getting Data from Services.");
        if (typeof($scope.pickuplatlng) !== 'undefined' && typeof($scope.destlatlng) !== 'undefined'&&$scope.destlatlng!==''&&$scope.pickuplatlng!=='') {
            //Call Uber API to get Cost Estimate Starts
            UberService.getPriceEstimate($scope.pickuplatlng.lat(), $scope.pickuplatlng.lng(), $scope.destlatlng.lat(), $scope.destlatlng.lng())
                .then(function (data) {
                    console.log("Uber Data");
                    $analytics.eventTrack('UberAPI');
                    $analytics.eventTrack('UberAPI', {  category: 'API', label: 'Uber' });
                    console.log(data.prices);
                    $scope.uber = data.prices;
                    $filter('orderBy')($scope.uber, 'low_estimate');
                    $scope.showTabs = true;
                    toaster.pop('success', "Uber Prices", "Uber Prices Loaded Successfully");


                });
            //Call Uber API to get Cost Estimate Ends

            //Call Lyft API to get Authentication Token
            LyftService.Authentication().then(function (data) {
                //Call Lyft API to get Cost Estimate Starts
                return LyftService.getPriceEstimate($scope.pickuplatlng.lat(), $scope.pickuplatlng.lng(), $scope.destlatlng.lat(), $scope.destlatlng.lng());
            }).then(function (data) {
                $scope.lyft = data.cost_estimates;
                $scope.lyft.sort(comp);
                console.log("Lyft Data");
                $analytics.eventTrack('LyftAPI');
                $analytics.eventTrack('LyftAPI', {  category: 'API', label: 'Lyft' });

                console.log($scope.lyft);
                toaster.pop('success', "Lyft Prices", "Lyft Prices Loaded Successfully");
            });
        } else {
            toaster.pop('error', "Error Occurred!", "Please Enter Pickup and Destination Location.");
        }
    }
    //Compare Button Click Event Ends

    //Re-render Google Map when the Map tab is clicked starts
    $scope.reRenderMap = function () {
        console.log($scope.pickupdetails);
        $scope.showMap = true;
        $timeout(function () {
            angular.forEach($scope.maps, function (index) {
                google.maps.event.trigger(index, 'resize');
            });
        }, 2000);
    }
    //Re-render Google Map when the Map tab is clicked ends

    $scope.$on('mapInitialized', function (evt, evtMap) {
        $scope.maps.push(evtMap);
    });

});