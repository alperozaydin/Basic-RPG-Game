require_relative 'Weapon.rb'
#character class
class Character
    def initialize(nname, nstrentgh, nagility, nintelligent, wchoice, nluck)
        @wchoice = wchoice
        @name=nname
        @strentgh = nstrentgh
        @agility = nagility
        @intelligent = nintelligent
        @luck = nluck
        #creating weapon object for the character
        if wchoice == 1
            @weapon = Blade.new
        elsif wchoice == 2
            @weapon = Axe.new
        elsif wchoice == 3
            @weapon = Knife.new
        elsif wchoice == 4
            @weapon = Bow.new
        end
    end
    
    def fight() #fight algorithm
        @attackPoint = ((@strentgh + @agility) * @intelligent) + @luck + @weapon.getStr() + @weapon.getagi()
        return @attackPoint
    end
    
    
end