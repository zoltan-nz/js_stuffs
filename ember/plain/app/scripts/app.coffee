window.ENV = window.ENV || {}
ENV.EXPERIMENTAL_CONTROL_HELPER = true

Plain = window.Plain = Ember.Application.create()

# Order and include as you please.
require 'scripts/controllers/*'
require 'scripts/store'
require 'scripts/models/*'
require 'scripts/routes/*'
require 'scripts/views/*'
require 'scripts/router'
