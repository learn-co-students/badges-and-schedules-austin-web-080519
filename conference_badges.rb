# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(nameArray)
    badgeArray = []
    nameArray.each do | name |
        message = badge_maker(name)
        badgeArray.push(message)
    end
    return badgeArray
end

def assign_rooms(speakersArray)
    speakerRoomArray =[]
    speakersArray.each_with_index do | speaker, index |
        speakerRoomArray.push("Hello, #{speaker}! You'll be assigned to room #{index+1}!")
    end
    return speakerRoomArray
end

def printer(nameArray)
    batch_badge_creator(nameArray).each do | name |
        puts name
    end
    assign_rooms(nameArray).each do | speaker |
        puts speaker
    end
end