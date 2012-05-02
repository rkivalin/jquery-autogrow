do ($ = Zepto ? jQuery) ->
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
      testSubject = $('<pre/>').css
        position: 'absolute'
        top: -9999
        left: -9999
        width: 'auto'
        fontFamily: input.css('fontFamily')
        fontSize: input.css('fontSize')
        fontWeight: input.css('fontWeight')
        letterSpacing: input.css('letterSpacing')
        whiteSpace: 'nowrap'
      check = ->
        testSubject.text(input.val())
        testerWidth = testSubject.width()
        newWidth = testerWidth + options.comfortZone
        newWidth = maxWidth if newWidth > maxWidth
        newWidth = minWidth if newWidth < minWidth
        currentWidth = input.width()

        input.width(newWidth) if currentWidth != newWidth

      testSubject.insertAfter(input)
      $(this).bind('input', check)
