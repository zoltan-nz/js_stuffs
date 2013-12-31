(function() {
  var template = Ember.Handlebars.template, templates = Ember.TEMPLATES = Ember.TEMPLATES || {};
templates['application'] = template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Ember.Handlebars.helpers); data = data || {};
  var buffer = '', stack1, hashContexts, hashTypes, options, helperMissing=helpers.helperMissing, escapeExpression=this.escapeExpression;


  data.buffer.push("<h1>Home</h1>\n    <nav>\n    	<ul>\n    			");
  hashContexts = {'tag': depth0};
  hashTypes = {'tag': "STRING"};
  options = {hash:{
    'tag': ("li")
  },contexts:[depth0,depth0],types:["STRING","STRING"],hashContexts:hashContexts,hashTypes:hashTypes,data:data};
  data.buffer.push(escapeExpression(((stack1 = helpers['link-to'] || (depth0 && depth0['link-to'])),stack1 ? stack1.call(depth0, "Home", "index", options) : helperMissing.call(depth0, "link-to", "Home", "index", options))));
  data.buffer.push("    			\n    		</ul>\n    </nav>\n    ");
  hashTypes = {};
  hashContexts = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "outlet", {hash:{},contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  return buffer;
  
});
})();