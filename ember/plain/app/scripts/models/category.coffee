Plain.Category = DS.Model.extend
	name: DS.attr()
	children: DS.hasMany('category')
	parent: DS.belongsTo('category')

Plain.Category.FIXTURES = [
	id: 1
	name: 'Elso'
	children: [2, 3]
,
	id: 2
	name: 'Masodik'
	children: []	
,
	id: 3
	name: 'Harmadik'
	children: []

]