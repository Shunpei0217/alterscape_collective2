# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

setFrameSource = (iFrame, src) ->
  if iFrame != null
    iFrame.src = src
  return
resetFrame = (iFrame) ->
  if iFrame != null
    iFrame.src = ''
  return
# This will run right before turbolinks is about to swap away the content of the current page
document.addEventListener 'page:before-change turbolinks:before-visit', ->
  # Check if the WebGL container exists. If yes, remove reset the itframe in order to unload the game.
  maybeIFrame = document.getElementById('epilepsy-webgl')
  if maybeIFrame != null
    resetFrame maybeIFrame
  return
# This will run every time after turbolinks swaps out the body of the web-page
document.addEventListener 'turbolinks:load', ->
  # Check if the WebGL container exists. If yes, load it inside the corresponding iframe.
  maybeIFrame = document.getElementById('epilepsy-webgl')
  if maybeIFrame != null
    setFrameSource maybeIFrame, '/WebGLGame/index.html'
  return
