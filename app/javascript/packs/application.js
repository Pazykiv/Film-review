// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("jquery")
require("turbolinks").start()
require("packs/jquery.raty")
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "../stylesheets/application"
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import "controllers"

const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

Turbolinks.start()
ActiveStorage.start()
