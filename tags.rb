#!/usr/bin/env ruby
require 'yaml'

tags = {}
nr = 0
#["programming","admin"].each do |file|
#["programming"].each do |file|
#["admin"].each do |file|
["tasks"].each do |file|
  File.open(file).each do |line|
    item = line.sub(/:.*/,'').strip
    line.sub(/.*:/,'').split(',').collect{|w| w.strip}.each do |tag|
      tags[tag] = [] unless tags[tag]
      tags[tag] << item
    end
    nr += 1
  end
end
tags.sort{|a,b| b[1].size <=> a[1].size}.each do |t,items|
  puts "#{t} (#{items.size}/#{items.size/nr.to_f})"
  #puts "#{t} (#{items.size/nr.to_f})"
  #puts items.to_yaml
end
