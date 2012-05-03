autoGrow jQuery plugin
======================

Auto resize input fields to fit content when user types.

Works both with jQuery and Zepto.js.


Usage
-----

To autoresize text field use:

    $('#myTextField').autoGrow({
      comfortZone: 70
    });


Limiting width
--------------

To limit width use css properties `min-width` and `max-width`.
When `min-width` is set to `0px` (default browser value),
minimum width is limited to current width.
