require_relative 'Character.rb'
#knight class
class Knight < Character
    def initialize(wchoice, luck)
        super("Knight", 8, 8, 1, wchoice, luck)
    end
    
    def display
        puts "Character name: #{@name}"
        puts "Character strentgh: #{@strentgh}"
        puts "Character agility: #{@agility}"
        puts "Character intelligent: #{@intelligent}"
        puts "Character luck: #{@luck}"
    end
    def getname()
        return "Knight"
    end

end