"use strict";

var React = require('react');

function makeKey() {
  var text = "";
  var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  for (var i = 0; i < 15; i++) {
    text += possible.charAt(Math.floor(Math.random() * possible.length));
  }

  return text;
}

exports.createElement_ = function(el, attrs, kids) {
  var children = React.Children.map(kids, function(kid) {
    if (kid.type) return React.cloneElement(kid, {key: makeKey()});
    else return kid;
  });
  return React.createElement(el, attrs, children);
}

exports.createElementNoChildren_ = function(el, attrs) {
  return React.createElement(el, attrs);
}
