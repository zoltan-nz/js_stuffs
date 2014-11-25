import Ember from 'ember';

import {
  moduleFor,
  test
} from 'ember-qunit';

moduleFor('route:list', 'ListRoute', {
  // Specify the other units that are required for this test.
  // needs: ['controller:foo']
});

test('it exists', function() {
  var route = this.subject();
  ok(route);
});

test('it has model and is array', function() {
  var model = this.subject().model();

  ok(model);
  ok(Ember.isArray(model));
});
