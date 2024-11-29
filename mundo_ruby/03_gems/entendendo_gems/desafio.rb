require 'bundler/setup'
Bundler.require(:default)
require 'active_support/all'


puts 1.second
puts 1.kilobyte
puts "hello_world".camelize
puts "HelloWorld".underscore

puts 1.day.ago
puts 2.week.from_now
puts 1.week.from_now

puts "pessoas".singularize