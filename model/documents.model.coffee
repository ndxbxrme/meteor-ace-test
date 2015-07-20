@Documents = new Mongo.Collection('documents')

Documents.allow
  insert: (userId, document) ->
    true
  update: (userId, document, fields, modifier) ->
    true
  remove: (userId, document) ->
    true
