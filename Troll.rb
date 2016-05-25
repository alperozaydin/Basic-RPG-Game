require_relative 'Character.rb'
#troll class
class Troll < Character
    def initialize(wchoice, luck)
        super("Troll", 10, 7, 1, wchoice, luck)
    end
    
    def display
        puts "Character name: #{@name}"
        puts "Character strentgh: #{@strentgh}"
        puts "Character agility: #{@agility}"
        puts "Character intelligent: #{@intelligent}"
        puts "Character luck: #{@luck}"
    end
    def getname()
        return "Troll"
    end

end