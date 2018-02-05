"use strict";

var createReactClass = require('create-react-class');

exports.react_ = function(spec) {
  return createReactClass({
    getInitialState: function() {
      return spec.initialState(this.props);
    },
    render: function() {
      var this_ = this;
      return spec.render(this.props, this.state, function(newState) {
        return function() {
          this_.setState(newState);
        };
      });
    }
  });
};
