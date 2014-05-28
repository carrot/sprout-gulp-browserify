gulp    = require 'gulp'
changed = require 'gulp-changed'
jade    = require 'gulp-jade'
config  = require '../config'

gulp.task 'html', ->

  gulp.src ['views/*.jade', '!./**/_*']
    .pipe changed("./#{config.dest}/")
    .pipe jade()
    .pipe gulp.dest("./#{config.dest}/")
