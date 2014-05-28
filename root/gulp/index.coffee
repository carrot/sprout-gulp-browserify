fs    = require 'fs'
tasks = fs.readdirSync('./gulp/tasks/')

require("./tasks/#{task}") for task in tasks
