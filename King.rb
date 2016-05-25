require_relative 'Character.rb'
#king class
class King < Character
    def initialize(wchoice, luck)
        super("King", 5, 5, 2, wchoice, luck)
    end
    ''
    def display
        puts "Character name: #{@name}"
        puts "Character strentgh: #{@strentgh}"
        puts "Character agility: #{@agility}"
        puts "Character intelligent: #{@intelligent}"
        puts "Character luck: #{@luck}"
    end
    def getname()
        return "King"
    end
end