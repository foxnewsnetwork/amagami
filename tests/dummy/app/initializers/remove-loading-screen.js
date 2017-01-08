import Ember from 'ember';
export function initialize(/* application */) {
  // application.inject('route', 'foo', 'service:foo');
  Ember.$('#now-loading').remove();
}

export default {
  name: 'remove-loading-screen',
  initialize
};
