autoGrow jQuery plugin
======================

Auto resize input fields to fit content when user types.

Works both with jQuery and Zepto.js.


Usage
-----

To autoresize text field use:

```js
$('#myTextField').autoGrow({
  comfortZone: 70 // default value
});
// or just
$('#myTextField').autoGrow(70);
```

When you update styles that change text size use:
```js
$('#myTextField').autoGrow();
```

You can also update comfort zone:
```js
$('#myTextField').autoGrow(newComfortZone);
```

To disable autogrowing:
```js
$('#myTextField').autoGrow('remove');
// or
$('#myTextField').autoGrow(false);
// or
$('#myTextField').autoGrow({remove: true});
```

Limiting width
--------------

To limit width use css properties `min-width` and `max-width`.
When `min-width` is set to `0px` (default browser value),
minimum width is limited to current width.


Animating
---------

If you wish smoothly resize textfields use following styles:
```css
#myTextField {
  transition: width 100ms linear;
}
```

Do not forget to add vendor prefixes for transition.
