'use strict';

angular.module('mgcrea.Store')

  .controller('MainCtrl', function($scope, $location, version) {

    $scope.$path = $location.path.bind($location);
    $scope.version = version;

  });
