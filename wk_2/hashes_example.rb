#this is an hash containing the different positions that players in a
#volleyball team does, along with the name of the players
#this is written in Ruby
 volleyball_team =  { Middle_Blocker: "Kelsie",
                      Setter: "Priya",
                      Power: "Livia",
                      Swing: "Mascha",
                      Off_Setter: "Ina",
                      Libero: "Jill"}

#This is a function that returns the setters name
def print_out_volleyball_setter_name(team_hash)
    return team_hash[:Setter]
end
p print_out_volleyball_setter_name(volleyball_team)
