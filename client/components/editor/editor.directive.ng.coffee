'use strict'

angular.module 'ace2App'
.directive 'editor', ['$timeout', ($timeout) ->
  {
    restrict: 'EA'
    templateUrl: 'client/components/editor/editor.view.html'
    replace: true
    scope:
      'docid': '@'
    link: (scope, elem, attrs) ->
      scope.$watch 'docid', (n) ->
        console.log n
        Session.set 'document', scope.docid
  }
]