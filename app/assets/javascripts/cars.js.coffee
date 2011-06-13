# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
# ((window, undefined_) ->
#   History = window.History
#   return false  unless History.enabled
#   History.Adapter.bind window, "statechange", ->
#     State = History.getState()
#     History.log State.data, State.title, State.url
#   
#   # History.pushState state: 1, "State 1", "?state=1"
#   # History.pushState state: 2, "State 2", "?state=2"
#   # History.replaceState state: 3, "State 3", "?state=3"
#   # History.pushState null, null, "?state=4"
#   # History.back()
#   # History.back()
#   # History.back()
#   # History.go 2
# ) window
jQuery ->

  jQuery.ajaxSetup
    dataType: "json"
    beforeSend: (xhr) ->
      xhr.setRequestHeader "Accept", "application/json"
  
  $("a[data-remote]").bind("ajax:success", (e, data, status, xhr) ->
    #console.log @href
    History.pushState null, null, @href
    $('#cname').html data.name
  ).bind("ajax:complete", ->
    console.log @href
  )
  
  History.Adapter.bind window, "statechange", ->
    State = History.getState()
    History.log State.data, State.title, State.url
