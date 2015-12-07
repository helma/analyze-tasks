#!/usr/bin/env ruby
require 'yaml'
`task completed`.each do |line|
  puts line
end
#File.open(ENV['HOME']+"/.task/completed.data").each do |line|
  #puts line.sub(/.*description:\"/,'').sub(/\".*/,'')
#end
#YAML.load_file(ENV['HOME']+"/.task/completed.data")
