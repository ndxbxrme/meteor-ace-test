Meteor.startup ->
  if Documents.find().count() == 0
    documents = [
      {
        'name': 'document 1'
      }
      {
        'name': 'document 2'
      }
    ]
    documents.forEach (document) ->
      Documents.insert document