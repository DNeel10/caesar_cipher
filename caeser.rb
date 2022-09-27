# a: 97, z: 122, A: 65, Z: 90
# create a method that accepts a string and a shift modifier (number) and create a Caesar cipher that will encode the string
# caesar ciphers mask the actual message by moving the letters by a certain number through the alphabet
# notes:
#   convert strings to numbers
#   wrap from z back to a, and Z back to A
#   keep the same case

# create an array of each character in a string
# convert the character to a number version of the letter
# modify the number by the shift amount
# if the shifted number is greater than 122, subtract 25 from it
# if the number is between 65 and 90
#   if the shifted number is greater than 90
#     subtract 25 from it



def caesar_cipher(string, shift)
    # create an array of the characters in the given string
    string_array = string.split("")
    # convert the characters in the array to their integer counterpart
    sub_array = string_array.map {|char| char.ord}
    
    #shift the integers by the shift modifier, keeping the case the same, and looping from z back to a
    shifted_array = sub_array.map do |num|
      if num.between?(65, 90) then
        if (num + shift) > 90 then
          (num + shift) - 25
        else
          (num + shift)
        end
      elsif (num + shift) > 122 then
        (num + shift) - 25
      elsif num < 65 then
        num
      else
        num + shift
      end
    end
  
    #convert the numbers back to a character, and join it back into a string
    puts shifted_array.map {|num| num.chr}.join("")
    
  end
  
  print "Enter the string to encode: "
  string = gets.chomp 
  
  print "Enter the cipher key (shift amount): "
  shift = gets.chomp.to_i
  
  caesar_cipher(string, shift)
  