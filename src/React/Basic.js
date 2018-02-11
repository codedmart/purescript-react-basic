"use strict";

var createReactClass = require('create-react-class');

exports.react_ = function(spec) {
  return createReactClass({
    getInitialState: function() {
      return spec.initialState(this.props);
    },
    componentDidMount: function() {
      var this_ = this;
      return spec.onLoad(this.props, this.state, function(newState) {
        return function() {
          this_.setState(newState);
        };
      })();
    },
    componentWillUnmount: function() {
      return spec.onUnload(this.props, this.state)();
    },
    componentDidCatch: function(error, errorInfo) {
      var this_ = this;
      return spec.onError(this.props, this.state, error, errorInfo, function(newState) {
        return function() {
          this_.setState(newState);
        };
      })();
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
