names = ["João", "Breno", "Souza", "Melo"]
names.each do |name|
  puts name
end

class String
  def greet
    puts "Hello, #{self}"
  end
end

names.each do |name|
  puts name.greet
end

