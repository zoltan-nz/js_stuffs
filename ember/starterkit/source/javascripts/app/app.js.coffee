#= require_self
#= require_tree ./routes
#= require ./router

window.ENV = window.ENV || {}
ENV.EXPERIMENTAL_CONTROL_HELPER = true
Ember.ENV.EXPERIMENTAL_CONTROL_HELPER = true

window.App = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
  LOG_BINDINGS: true
  LOG_ACTIVE_GENERATION: true
  RAISE_ON_DEPRECATION: true
  LOG_STACKTRACE_ON_DEPRECATION: true
  DEBUG: true

  rootElement: '#app'
