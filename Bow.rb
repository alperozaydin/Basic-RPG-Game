require_relative 'Weapon.rb'
#bow class
class Bow < Weapon
    def initialize
        super("Bow", 3, 1)
    end
    def display
        puts "Weapons name: #{@name}"
        puts "Weapons strentgh: #{@strentgh}"
        puts "Weapons agility: #{@agility}"
        
    end
end
