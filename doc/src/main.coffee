Vue = require 'vue'
path = require 'path'
vmdl = require '../../src/vue-mdl'
require './style/mdl.scss'
require 'material-design-lite/material.min.js'
context = require.context './partials', false, /.vue$/

vmdl.registerAll Vue

Vue.component 'title-link', require './utils/title-link.vue'

context.keys().forEach (comp) ->
  Vue.component path.basename(comp, '.vue'), context comp

Vue.config.debug = true
app = new Vue
  el: 'body'
  components:
    vmdlDoc: require './vmdl-doc.vue'

