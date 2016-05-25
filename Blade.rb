require_relative 'Weapon.rb'
#blade class
class Blade < Weapon
    def initialize
        super("Blade",3, 3)
    end
    def display
        puts "Weapons name: #{@name}"
        puts "Weapons strentgh: #{@strentgh}"
        puts "Weapons agility: #{@agility}"

    end
end
