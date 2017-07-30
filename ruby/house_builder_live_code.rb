#to give end user ability to add things to our data structure we create methods
# they can add up to 5 rooms
#they can add unlimited objects to room

# def add_rooms(house, room_name)
#   room_name = gets.chomp


# house = {
#   room_name: [room_objects]
# }

def add_room_to_house!(house, room_name)
  if house.keys.length == 5
    false
  else
  house[room_name] = []
  true
end
end

def add_item_to_room!(house, room_name, item_name)
  house[room_name] << item_name
end

house = {}

#User interface
def print_house(house)
  house.each do |room_name, item_name|
    p item_name?
    p room_name
  p house
end

#driver code
rooms = ["living room", "bedroom", "bathroom", "kitchen", "bedroom2"]
rooms.each do |room|
  add_room_to_house!(house,room)
  add_item_to_room!(house,room,"test_item")
end

print_house(house)

# rooms.each do |room|
# add_item_to_room!(house,room,"test_item")
# end