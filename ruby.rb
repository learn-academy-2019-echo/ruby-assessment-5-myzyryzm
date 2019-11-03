# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

# 1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

myArray = [1, 2, 6, 9, 3, 21]

def multiply_array(arr, num, use_first)
  if(use_first)
    return arr.collect{|element| element * num}
  else
    return arr.map{|element| element * num}
  end
end
arr1 = multiply_array(myArray, 3, true)
arr2 = multiply_array(myArray, 3, false)
puts arr1
puts arr2


# 2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = "hello there, how are you?"
def capitalize_every_word(str)
  return str.split.map(&:capitalize).join(' ')
end
puts capitalize_every_word(sentence)


# 3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"
v = ['a', 'e', 'i', 'o', 'u', 'y']
def delete_vowels(str, vowels)
  return str.split('').delete_if{|c| vowels.include?(c.downcase)}.join('')
end
puts delete_vowels(no_vowels, v)


# 4. Look at this horrible Ruby code. Fix it to be good Ruby code.

class Day
  def initialize(day)
    @day=day
  end

  def say_hi
    if(@day.downcase === "friday")
      puts "TGIF!"
    elsif(@day.downcase === "monday")
      puts "Its monday again"
    else
      puts "another day"
    end
  end
end
day = Day.new("FRiDay")
day.say_hi

# 5a. Create a class called Animal that initializes with a color. Create a method in the class called legs that returns 4.

class Animal
  def initialize(color)
    @color = color
    @legs = 4
  end
  attr_reader :legs
end

# 5b. Create a new instance of an Animal with a brown color. Return how the number of legs for the animal object.
brown_animal = Animal.new('brown')
puts brown_animal.legs