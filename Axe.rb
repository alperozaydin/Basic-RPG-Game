require_relative 'Weapon.rb'
#axe class
class Axe < Weapon
    def initialize
        super("Axe", 5, 2)
    end
    def display
        puts "Weapons name: #{@name}"
        puts "Weapons strentgh: #{@strentgh}"
        puts "Weapons agility: #{@agility}"
        
    end
end
