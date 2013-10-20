#= require_self

App = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  ready: ->
    @set 'Router.enableLogging', true

App.Router.map ->
  @resource 'about'
  @resource 'posts', ->
    @resource 'post', path: ':post_id'

App.PostsRoute = Ember.Route.extend
  model: ->
    $.getJSON('http://localhost:3000/posts').then (data) ->
      data

App.PostRoute = Ember.Route.extend
  model: (params) ->
    posts.findBy 'id', params.post_id

App.PostController = Ember.ObjectController.extend
  isEditing: false

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

posts = [{
  id: '1'
  title: 'This is my First Article'
  author: {name: 'Zoltan'}
  date: new Date('12-12-2013')
  excerpt: 'About learning Ember JS.'
  body: 'A long long article body text comes here in my first article on this website. What an amazing tool. :)'
},{
  id: '2'
  title: 'Second Article should have different Title'
  author: {name: 'Niki'}
  date: new Date('12-12-2013')
  excerpt: 'We have a guest blogger today.'
  body: 'Someone else coude write your blogpost without problem. Well done.'
}]