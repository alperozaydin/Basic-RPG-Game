#Alper Ozaydin
require_relative 'Knight.rb'
require_relative 'King.rb'
require_relative 'Troll.rb'
require_relative 'Queen.rb'
require_relative 'Blade.rb'
require_relative 'Axe.rb'
require_relative 'Knife.rb'
require_relative 'Bow.rb'
#main class
a = 0

puts "Select a character: King(1), Knight(2), Queen(3), Troll(4)"
cchoice = gets.chomp #getting input from user

puts "Select a weapon: Blade(1), Axe(2), Knife(3), Bow(4)"
wchoice = gets.chomp #getting input from user

arr = ["King(1)","Knight(2)", "Queen(3)", "Troll(4)"] #storing all characters in arrays
arr2 = ["King","Knight", "Queen", "Troll"]
lucknum1 = rand(1...7) #random number to assign to the character as a luck

# first player select one character
if cchoice == "1"
    puts "CHARACTER SELECTED!"
    char = King.new(wchoice.to_i,lucknum1) #contructor
    char.display #display method
    arr.delete_at(0)
    arr2.delete_at(0) #erasing selected characeter so opponent is going to selecet another character
    arr2.insert(0,"")
elsif cchoice == "2"
    puts "CHARACTER SELECTED!"
    char = Knight.new(wchoice.to_i, lucknum1)
    char.display
    arr.delete_at(1)
    arr2.delete_at(1)
    arr2.insert(1,"")
elsif cchoice == "3"
    puts "CHARACTER SELECTED!"
    char = Queen.new(wchoice.to_i, lucknum1)
    char.display
    arr.delete_at(2)
    arr2.delete_at(2)
    arr2.insert(2,"")
elsif cchoice == "4"
    puts "CHARACTER SELECTED!"
    char = Troll.new(wchoice.to_i, lucknum1)
    char.display
    arr.delete_at(3)
    arr2.delete_at(3)
    arr2.insert(3,"")
end

puts

#first player select a weapon
if wchoice == "1"
    puts "WEAPON SELECTED!"
    wep = Blade.new #constructor for weapon class
    wep.display #display method for weapon
elsif wchoice == "2"
    puts "WEAPON SELECTED!"
    wep = Axe.new
    wep.display
elsif wchoice == "3"
    puts "WEAPON SELECTED!"
    wep = Knife.new
    wep.display
elsif wchoice == "4"
    puts "WEAPON SELECTED!"
    wep = Bow.new
    wep.display
end
puts
#while loop to keep the battle
while a == 0
puts "Select the opponent:"

i = 0

#showing opponent character, user need to select one of them to fight
until i >= arr2.length do
    print "To choose this character, press #{i+1}: "
    puts arr2[i]
    i = i + 1
end

ochoice = gets.chomp #user select a character as an enemy

rannum = rand(1...5) #random method to assign random weapon for opponent
lucknum2 = rand(1...7) #random number to assign to the opponents character as a luck

if ochoice == "2"
    "CHARACTER SELECTED!"
    char2 = Knight.new(rannum, lucknum2) #constructor
    char2.display #display method
    elsif ochoice == "1"
    "CHARACTER SELECTED!"
    char2 = King.new(rannum, lucknum2)
    char2.display
    elsif ochoice == "3"
    "CHARACTER SELECTED!"
    char2 = Queen.new(rannum, lucknum2)
    char2.display
    elsif ochoice == "4"
    "CHARACTER SELECTED!"
    char2 = Troll.new(rannum, lucknum2)
    char2.display
end

puts
# selecting a weapon for enemy
if rannum == 1
    puts "WEAPON SELECTED!"
    wep2 = Blade.new
    wep2.display
elsif rannum == 2
    puts "WEAPON SELECTED!"
    wep2 = Axe.new
    wep2.display
elsif rannum == 3
    puts "WEAPON SELECTED!"
    wep2 =Knife.new
    wep2.display
elsif rannum == 4
    puts "WEAPON SELECTED!"
    wep2 = Bow.new
    wep2.display
end

puts
# after calculating battle algorithm, printing both user and enemy points to compare values
print "Your battle point: "
puts char.fight

print "Opponent battle point: "
puts char2.fight

puts
#comparing values and defining the winner for this battle
if char.fight > char2.fight
    puts "YOU WIN!"
    arr2.delete_at(ochoice.to_i - 1)
    arr2.insert(ochoice.to_i - 1,"")
elsif char.fight < char2.fight
    puts "Opponent won the battle. YOU LOST!"
    break #break for; if user lost the battle, game is over
else
    puts "Tie!"
end

puts
# if user defeat all enemies, game is over

if arr2[0] == "" and arr2[1] == "" and arr2[2] == "" and arr2[3] == ""
    break
end

end

puts "----------------"
puts "GAME IS OVER!!!"
puts "----------------"




