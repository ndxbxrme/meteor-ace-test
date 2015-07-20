'use strict'

angular.module 'ace2App'
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
  .state 'main',
    url: '/'
    templateUrl: 'client/main/main.view.html'
    controller: 'MainCtrl'
]