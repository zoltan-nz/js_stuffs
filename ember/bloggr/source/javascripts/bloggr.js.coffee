#= require_self

window.App = Ember.Application.create
  LOG_TRANSITIONS_INTERNAL: true
  LOG_BINDINGS: true
  LOG_ACTIVE_GENERATION: true
  LOG_VIEW_LOOKUPS: true
  ENV.RAISE_ON_DEPRECATION = true
  LOG_STACKTRACE_ON_DEPRECATION: true
  LOG_VERSION: true

  debugMode: true
  ready: ->
    @set 'Router.enableLogging', true

###
# Database and Models
###
App.ApplicationAdapter = DS.RESTAdapter.extend
  host: 'http://localhost:3000'

App.Store = DS.Store.extend()

#attr = DS.attr
#belongsTo = DS.belongsTo
#hasMany = DS.hasMany

App.Post = DS.Model.extend
  title: DS.attr()
  excerpt: DS.attr()
  body: DS.attr()
  date: DS.attr()
  author: DS.belongsTo 'author', async: true

App.Author = DS.Model.extend
  posts: DS.hasMany 'post', inverse: 'author'
  name: DS.attr 'string'

###
# Routers
###

App.Router.map ->
  @resource 'about'
  @resource 'posts', ->
    @resource 'post', path: ':post_id'

App.PostsRoute = Ember.Route.extend
  model: ->
    store = @get('store')
    store.findAll('post')


App.PostRoute = Ember.Route.extend
  model: (params) ->
    store = @get('store')
    store.find('post', params.post_id)

App.PostsController = Em.ArrayController.extend
  isNew:      false

  actions:
    new: ->
      @set 'isNew',     true
    addNewPost: ->
      newpost = @store.createRecord( 'post', {
        title: @get('title')
        excerpt: @get('excerpt')
        body: @get('body')
      })
      newpost.save()




App.PostController = Ember.ObjectController.extend
  isEditing:  false

  actions:
    edit: ->
      @set 'isEditing', true

    doneEditing: ->
      @set 'isEditing', false



Ember.Handlebars.helper 'format-date', (date) ->
  moment(date).fromNow()

showdown = new Showdown.converter()

Ember.Handlebars.helper 'format-markdown', (input) ->
  new Handlebars.SafeString(showdown.makeHtml(input))
