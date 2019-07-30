# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

 def batch_badge_creator(array)
  array.collect do |name|
    badge_maker(name)
  end
end

 def assign_rooms(array)
  array.each_with_index.map do |name, index|
    range = Array (1..array.length)
    "Hello, #{name}! You'll be assigned to room #{range[index]}!"
  end
end

 def printer(array)
  for index in (0..array.length-1)
    puts batch_badge_creator(array)[index]
    puts assign_rooms(array)[index]
  end
end
