gulp   = require 'gulp'
coffee = require 'gulp-coffee'

gulp.task 'coffee', ->
  gulp.src 'assets/coffee/*.coffee'
  .pipe coffee bare: true
  .pipe gulp.dest 'lib/public/js'

gulp.task 'watch', ->
  gulp.watch 'assets/coffee/*.coffee', ['coffee']

gulp.task 'default', ['watch', 'coffee']
