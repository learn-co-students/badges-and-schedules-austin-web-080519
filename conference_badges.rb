# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees_list)
    new_batch_array = []
    attendees_list.each { |attendee_name| 
        new_batch_array << badge_maker(attendee_name)
    }
     new_batch_array
end 

def room_assign_maker(name, room_number)
    "Hello, #{name}! You'll be assigned to room #{room_number}!"
end

def assign_rooms(attendees_list)
    room_assignments_list = []

    attendees_list.each { |attendee_name|
        room_assignments_list << room_assign_maker(attendee_name, attendees_list.index(attendee_name) + 1)
    }

    room_assignments_list
end

def printer(attendees)
    list_to_print = batch_badge_creator(attendees).concat(assign_rooms(attendees))
    list_to_print.each { |line|
        puts line.chomp
    }
end