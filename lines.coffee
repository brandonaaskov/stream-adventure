split = require 'split'
through = require 'through'

lineCounter = 0

caser = (text) ->
  lineCounter++

  if lineCounter % 2 is 0
    return text.toUpperCase()

  return text.toLowerCase()

process.stdin
  .pipe(split())
  .pipe(through((line) ->
    final = caser(line.toString())
    this.queue(final + '\n')
  ))
  .pipe(process.stdout)