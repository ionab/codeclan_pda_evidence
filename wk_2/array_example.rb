
#this is an array containing the different positions that players in a
#volleyball team does
#this is written in Ruby
 volleyball_team_positions = ["Middle Blocker",
                              "Setter",
                              "Power",
                              "Swing",
                              "Off - Setter",
                              "Libero"]



#this is a function that finds a volleyball team position by name
#it prints out the the position if it's found
#and prints nil if not
def find_position_by_name(positions_array, position_name)
  for position in positions_array
    return position if position_name == position
  end
  return nil
end
p find_position_by_name(volleyball_team_positions, "Middle Blocker")
p find_position_by_name(volleyball_team_positions, "Setter")
p find_position_by_name(volleyball_team_positions, "Coach")
