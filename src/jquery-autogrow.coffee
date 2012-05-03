do ($ = Zepto ? jQuery) ->
  inherit = [
    'font-family', 'font-size', 'font-variant'
    'font-weight', 'font-stretch', 'letter-spacing']

  $.fn.autoGrow = (options) ->

    options = $.extend({
      maxWidth: 1000
      minWidth: 0
      comfortZone: 70
    }, options)

    this.each ->
      maxWidth = options.maxWidth
      minWidth = options.minWidth or $(this).width()
      input = $(this)
      styles =
        position: 'absolute'
        top: -9999
        left: -9999
        width: 'auto'
        visibility: 'hidden'
      styles[prop] = input.css(prop) for prop in inherit
      testSubject = $('<pre/>').css(styles)
      check = ->
        testSubject.text(input.val())
        newWidth = testSubject.width() + options.comfortZone
        newWidth = maxWidth if newWidth > maxWidth
        newWidth = minWidth if newWidth < minWidth
        input.width(newWidth)

      testSubject.insertAfter(input)
      $(this).bind('input', check)
