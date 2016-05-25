require_relative 'Character.rb'
#queen class
class Queen < Character
    def initialize(wchoice, luck)
        super("Queen", 3, 3, 3, wchoice, luck)
    end
    
    def display
        puts "Character name: #{@name}"
        puts "Character strentgh: #{@strentgh}"
        puts "Character agility: #{@agility}"
        puts "Character intelligent: #{@intelligent}"
        puts "Character luck: #{@luck}"
    end
    def getname()
        return "Queen"
    end

end