gulp       = require 'gulp'
watchify   = require 'watchify'
source     = require 'vinyl-source-stream'
glob       = require 'glob'
config     = require '../config'

gulp.task 'browserify', ->

  fglob = glob.sync('**/assets/js/**/*.coffee')
  files = fglob.map((f) -> "./#{f}")

  bundler = watchify
    entries: files
    extensions: ['.coffee']

  bundle = ->
    bundler.bundle({ debug: true })
      .pipe(source('bundle.js'))
      .pipe(gulp.dest("#{config.dest}"))

  bundler.on 'update', bundle

  bundle()
