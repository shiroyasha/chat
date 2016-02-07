$ ->
  window.board = new Chat($("#chat"))

App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    window.board.pushMessage("igor", data.message)

  say: (message) ->
    @perform "say", message: message
