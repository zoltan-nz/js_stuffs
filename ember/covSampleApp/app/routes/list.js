import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return [
      'First item',
      'Second item',
      'Third item'
    ];
  }
});
