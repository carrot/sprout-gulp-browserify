gulp       = require 'gulp'
livereload = require 'gulp-livereload'
connect    = require 'connect'
config     = require '../config'
gutil      = require 'gulp-util'

gulp.task 'server', (next) ->
  port = process.env.PORT || config.port
  connect().use(connect.static("#{config.dest}")).listen(port, next)
  gutil.log('Serving site ::', gutil.colors.magenta("localhost:#{port}"), '...')

gulp.task 'watch', ['server'], ->
  gulp.watch './views/**', ['html']
  gulp.watch(["./#{config.dest}/**"]).on 'change', (f) -> livereload().changed f.path
