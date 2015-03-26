gulp   = require 'gulp'
coffee = require 'gulp-coffee'

gulp.task 'coffee', ->
  gulp.src 'assets/coffee/*.coffee'
  .pipe coffee()
  .pipe gulp.dest('lib/public/js')

gulp.task 'default', ['coffee']
