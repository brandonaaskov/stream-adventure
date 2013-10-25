concat = require 'concat-stream'

write = concat (data) ->
  

process.stdin.pipe(concat( (src) ->
	reversed = src.toString().split('').reverse().join('')
))
.pipe(process.stdout)