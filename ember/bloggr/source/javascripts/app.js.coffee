App = Ember.Application.create()

App.Router.map ->
  @resource 'about'
  @resource 'posts', ->
    @resource 'post', path: ':post_id'

App.PostsRoute = Ember.Route.extend
  model: ->
    posts

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



posts = [{
  id: '1'
  title: 'Title 1'
  author: {name: 'akarki'}
  date: new Date('12-12-2013')
  excerpt: 'Excerpt'
  body: 'body text'
},{
  id: '2'
  title: 'Title 2'
  author: {name: 'akarki'}
  date: new Date('12-12-2013')
  excerpt: 'Excerpt'
  body: 'body text'
}]