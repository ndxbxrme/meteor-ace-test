'use strict'

Meteor.publish 'documents', (options, searchString) ->
  if !searchString
    searchString = ''
  Counts.publish this, 'numberOfDocuments', Documents.find(
    'name':
      '$regex': '.*' + searchString or '' + '.*'
      '$options': 'i'
  ), noReady: true
  Documents.find {
    'name':
      '$regex': '.*' + searchString or '' + '.*'
      '$options': 'i'
  }, options