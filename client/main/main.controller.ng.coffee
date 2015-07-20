'use strict'

angular.module 'ace2App'
.controller 'MainCtrl', ['$scope', '$meteor', ($scope, $meteor) ->
  $scope.documents = $meteor.collection Documents
  $meteor.subscribe 'documents'
]