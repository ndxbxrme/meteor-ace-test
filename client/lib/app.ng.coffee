angular.module 'ace2App', [
  'angular-meteor'
  'ui.router'
  'angularUtils.directives.dirPagination'
]

onReady = () ->
  angular.bootstrap document, ['ace2App']
  
if Meteor.isCordova
  angular.element(document).on 'deviceready', onReady
else
  angular.element(document).ready onReady