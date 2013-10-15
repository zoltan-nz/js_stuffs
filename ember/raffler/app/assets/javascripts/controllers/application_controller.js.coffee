Raffler.ApplicationController = Em.ArrayController.extend(
  actions:
    addEntry: ->
      name =  @get('newEntryName')
      console.log name
      return if !name.trim()

      entry = @store.createRecord('entry',
        name: name)
      @set('newEntryName', '')
)