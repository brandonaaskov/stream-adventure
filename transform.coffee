through = require 'through'

write = (buffer) ->
  this.queue(buffer.toString().toUpperCase())

#end = () ->
#  this.queue(null)

#tr = through(write, end)
tr = through(write)

process.stdin.pipe(tr).pipe(process.stdout)