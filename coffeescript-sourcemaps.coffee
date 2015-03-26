gulp       = require 'gulp'
gutil      = require 'gulp-util'
coffee     = require 'gulp-coffee'
sourcemaps = require 'gulp-sourcemaps'

gulp.task 'coffee', ->
  gulp.src 'assets/coffee/*.coffee'
  .pipe coffee( { bare: true } ).on 'error', gutil.log
  .pipe gulp.dest('lib/public/js')

gulp.task 'coffee-source-maps', ->
  gulp.src 'assets/coffee/*.coffee'
    .pipe sourcemaps.init()
    .pipe coffee()
    .pipe sourcemaps.write 'maps'
    .pipe gulp.dest('lib/public/js')

gulp.task 'watch', ->
  gulp.watch 'assets/coffee/*.coffee', ['coffee', 'coffee-source-maps']

gulp.task 'default', ['watch', 'coffee', 'coffee-source-maps']
