require_relative 'Weapon.rb'
#knife class
class Knife < Weapon
    def initialize
        super("Knife", 1, 2)
    end
    def display
        puts "Weapons name: #{@name}"
        puts "Weapons strentgh: #{@strentgh}"
        puts "Weapons agility: #{@agility}"
        
    end
end
