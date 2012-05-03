do ($ = Zepto ? jQuery) ->
  inherit = [
    'font-family', 'font-size', 'font-variant'
    'font-weight', 'font-stretch', 'letter-spacing']

  $.fn.autoGrow = (options) ->

    comfortZone = options?.comfortZone ? 70

    this.each ->
      input = $(this)
      if input.css('min-width') == '0px'
        input.css('min-width', "#{input.width()}px")
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
        input.width(testSubject.width() + comfortZone)

      testSubject.insertAfter(input)
      input.bind('input', check)
