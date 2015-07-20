@Template.codeMirror.helpers
  docid: (editor) ->
    console.log 'ed', editor
    Session.get 'document'
  config: ->
    (editor) ->
      editor.setTheme 'ace/theme/monokai'
      editor.getSession().setMode 'ace/mode/coffee'
      editor.setShowPrintMargin false
      editor.getSession().setUseWrapMode true
      return
  setMode: ->
    (editor) ->
      console.log 'setmode'