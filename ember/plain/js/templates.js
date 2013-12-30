(function() {
  var template = Handlebars.template, templates = Ember.TEMPLATES = Ember.TEMPLATES || {};
templates['application'] = template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, stack2, options, helperMissing=helpers.helperMissing, escapeExpression=this.escapeExpression, functionType="function";


  buffer += "<h1>Home</h1>\n    <nav>\n    	<ul>\n    			";
  options = {hash:{
    'tag': ("li")
  },data:data};
  buffer += escapeExpression(((stack1 = helpers['link-to'] || depth0['link-to']),stack1 ? stack1.call(depth0, "Home", "index", options) : helperMissing.call(depth0, "link-to", "Home", "index", options)))
    + "    			\n    		</ul>\n    </nav>\n    ";
  if (stack2 = helpers.outlet) { stack2 = stack2.call(depth0, {hash:{},data:data}); }
  else { stack2 = depth0.outlet; stack2 = typeof stack2 === functionType ? stack2.apply(depth0) : stack2; }
  buffer += escapeExpression(stack2);
  return buffer;
  });
})();