#= require core/jquery-2.1.1.min.js

linkTouchStart = ->
  thisAnchor = jQuery(this)
  touchPos = thisAnchor.offset().top

  moveCheck = ->
    nowPos = thisAnchor.offset().top
    if touchPos == nowPos
      thisAnchor.addClass 'js-touch'
    return

  setTimeout moveCheck, 100
  return

linkTouchEnd = ->
  thisAnchor = jQuery(this)

  hoverRemove = ->
    thisAnchor.removeClass 'js-touch'
    return

  setTimeout hoverRemove, 500
  return

jQuery(document).on 'touchstart mousedown', 'a', linkTouchStart
jQuery(document).on 'touchend mouseup', 'a', linkTouchEnd

#いやいやここのしわ
a01 = new Audio('assets/sounds/01.mp3')
$('.btn01').on 'click', (e) ->
  e.preventDefault()
  # 再生後など、currentTimeが揃っていないなら頭出し
  if a01.currentTime
    a01.currentTime = 0
  # 再生
  a01.play()
  return

#このしわ
a02 = new Audio('assets/sounds/02.mp3')
$('.btn02').on 'click', (e) ->
  e.preventDefault()
  if a02.currentTime
    a02.currentTime = 0
  a02.play()
  return

#どごでみだだれ
a03 = new Audio('assets/sounds/03.mp3')
$('.btn03').on 'click', (e) ->
  e.preventDefault()
  if a03.currentTime
    a03.currentTime = 0
  a03.play()
  return

#あおおおう
a04 = new Audio('assets/sounds/04.mp3')
$('.btn04').on 'click', (e) ->
  e.preventDefault()
  if a04.currentTime
    a04.currentTime = 0
  a04.play()
  return

#だいじょぶだな
a05 = new Audio('assets/sounds/05.mp3')
$('.btn05').on 'click', (e) ->
  e.preventDefault()
  if a05.currentTime
    a05.currentTime = 0
  a05.play()
  return

#あなっきんな
a06 = new Audio('assets/sounds/06.mp3')
$('.btn06').on 'click', (e) ->
  e.preventDefault()
  if a06.currentTime
    a06.currentTime = 0
  a06.play()
  return