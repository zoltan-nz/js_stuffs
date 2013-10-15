Ember.TEMPLATES["todos"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [3,'>= 1.0.0-rc.4'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', stack1, stack2, hashContexts, hashTypes, options, helperMissing=helpers.helperMissing, escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = '', stack1, hashContexts, hashTypes, options;
  data.buffer.push("\n                <li ");
  hashContexts = {'class': depth0};
  hashTypes = {'class': "STRING"};
  options = {hash:{
    'class': ("isCompleted:completed")
  },contexts:[],types:[],hashContexts:hashContexts,hashTypes:hashTypes,data:data};
  data.buffer.push(escapeExpression(((stack1 = helpers['bind-attr']),stack1 ? stack1.call(depth0, options) : helperMissing.call(depth0, "bind-attr", options))));
  data.buffer.push(">\n                    ");
  hashContexts = {'type': depth0,'checked': depth0,'class': depth0};
  hashTypes = {'type': "STRING",'checked': "ID",'class': "STRING"};
  options = {hash:{
    'type': ("checkbox"),
    'checked': ("isCompleted"),
    'class': ("toggle")
  },contexts:[],types:[],hashContexts:hashContexts,hashTypes:hashTypes,data:data};
  data.buffer.push(escapeExpression(((stack1 = helpers.input),stack1 ? stack1.call(depth0, options) : helperMissing.call(depth0, "input", options))));
  data.buffer.push("\n                    <label>");
  hashTypes = {};
  hashContexts = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "title", {hash:{},contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  data.buffer.push("</label>\n                    <button class=\"destroy\"></button>\n                </li>\n            ");
  return buffer;
  }

  data.buffer.push("<section id=\"todoapp\">\n    <header id=\"header\">\n        <h1>todos</h1>\n        ");
  hashContexts = {'type': depth0,'id': depth0,'placeholder': depth0,'value': depth0,'action': depth0};
  hashTypes = {'type': "STRING",'id': "STRING",'placeholder': "STRING",'value': "ID",'action': "STRING"};
  options = {hash:{
    'type': ("text"),
    'id': ("new-todo"),
    'placeholder': ("What needs to be done?"),
    'value': ("newTitle"),
    'action': ("createTodo")
  },contexts:[],types:[],hashContexts:hashContexts,hashTypes:hashTypes,data:data};
  data.buffer.push(escapeExpression(((stack1 = helpers.input),stack1 ? stack1.call(depth0, options) : helperMissing.call(depth0, "input", options))));
  data.buffer.push("\n    </header>\n\n    <section id=\"main\">\n        <ul id=\"todo-list\">\n            ");
  hashContexts = {'itemController': depth0};
  hashTypes = {'itemController': "STRING"};
  stack2 = helpers.each.call(depth0, {hash:{
    'itemController': ("todo")
  },inverse:self.noop,fn:self.program(1, program1, data),contexts:[],types:[],hashContexts:hashContexts,hashTypes:hashTypes,data:data});
  if(stack2 || stack2 === 0) { data.buffer.push(stack2); }
  data.buffer.push("\n        </ul>\n\n        <input type=\"checkbox\" id=\"toggle-all\">\n    </section>\n\n    <footer id=\"footer\">\n        <span id=\"todo-count\">\n          <strong>");
  hashTypes = {};
  hashContexts = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "remaining", {hash:{},contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  data.buffer.push("</strong> ");
  hashTypes = {};
  hashContexts = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "inflection", {hash:{},contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  data.buffer.push(" left\n        </span>\n        <ul id=\"filters\">\n            <li>\n                <a href=\"all\" class=\"selected\">All</a>\n            </li>\n            <li>\n                <a href=\"active\">Active</a>\n            </li>\n            <li>\n                <a href=\"completed\">Completed</a>\n            </li>\n        </ul>\n\n        <button id=\"clear-completed\">\n            Clear completed (1)\n        </button>\n    </footer>\n</section>\n\n<footer id=\"info\">\n    <p>Double-click to edit a todo</p>\n</footer>\n");
  return buffer;
  
});
