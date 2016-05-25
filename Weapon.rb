#weapon class
class Weapon
    def initialize(nname, nstrentgh, nagility)
        @name = nname
        @strentgh = nstrentgh
        @agility = nagility
    end
    
    def getStr()
        return @strentgh
    end
    
    def getagi()
        return @agility
    end
end
