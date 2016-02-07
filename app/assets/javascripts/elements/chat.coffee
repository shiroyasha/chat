class @Chat

  constructor: (el) ->
    @board        = el.find(".message-board")
    @sendButton   = el.find(".send")
    @messageInput = el.find(".message")

    @setUpCallbacks()

  setUpCallbacks: ->
    @sendButton.on("click", @sendMessage)

  userConnected: (username) ->
    @board.append("<p>#{username} joined the board</p>")

  pushMessage: (username, message) ->
    console.log(username, message)
    console.log(@board)

    @board.append("<p>#{username}: #{message}</p>")

  sendMessage: (event) =>
    App.chat.say(@message()) if @hasMessage()

    @clearMessage()

  message: ->
    @messageInput.val()

  hasMessage: ->
    @message().length > 0

  clearMessage: ->
    @messageInput.val("")
