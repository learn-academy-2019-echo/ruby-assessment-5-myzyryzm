# ASSESSMENT 4: INTRO TO RUBY
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.   

1. In what ways are JavaScript and Ruby similar? In what ways are they different?

  Your answer: they both have for loops; if statements; classes; objects; similar array methods such as .map and .each

  Researched answer: ruby uses end; ruby uses def to declare a function where JS uses function; ruby has the ! operator which can be used to turn methods like .map which don't modify the original array to modify the original array; ruby variables 



2. What is a hash?

  Your answer: similar to a dictionary; it's a listing of key value pairs

  Researched answer: hashes can be created using either strings or symbols for its keys e.g.
  grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
  grades["Jane Doe"] #=> 10
  OR
  options = { font_size: 10, font_family: "Arial" }
  options[:font_size]  # => 10





3. What is the testing framework used in Ruby? Describe the process of setting up the testing environment.

  Your answer: the framework is rspec and require 'rspec' must be used in the rspec file along with a require (or require_relative) pointing to the file to be tested

  Researched answer: a typical rspec file might look like this (for test class Example)

  require 'rspec'
  require_relative 'example'
  
  describe Example do
    #first function will check if Example can be created
    it 'is a thing' do
      expect{Example.new}.to_not raise_error
    end
  end

  typical set up for testing something
  it 'description of what the test is for' do
    #some logic behind the scenes
    expect(#somehting being tested).#to do something
  end


4. Name three possible relationships between objects?

  Your answer: getters and setters

  Researched answer: all values are objects in ruby; all objects belong to a class; the class dictates what behavior an object is to have



5. What is an instance variable? How is it different from other variables in Ruby?

  Your answer: variable with @ at the start of it; only accessible from inside a class; usually initialized when creating an instance of a class

  Researched answer: you can't access an instance variable from outside the class in ruby



6. Ruby has a great community and tons of free resources to help you learn. [Here](https://www.ruby-lang.org/en/documentation/)is a list of great resources. Below are a few popular ones:
- [Interactive Ruby Tutorial](http://tryruby.org/levels/1/challenges/0)
- [Why's (poigniant) Guide to Ruby](http://poignant.guide/book/chapter-1.html): comics, anecdotes, and microscopic canaries
- [Ruby in 20 Min](https://www.ruby-lang.org/en/documentation/quickstart/)
- [Ruby Style Guide](https://rubystyle.guide/)

Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Ruby:

1) assignment of a variable never creates a new object; all variables point to (i.e. reference) an object

2) variables defined locally (such as when defined inside a do...end or a block {...}) cannot be accessed outside of that scope; however, if a variable with the same name is defined outside the local scope then the variable with the same name defined inside the scope does not have to be created

3) using a asterisk in front of an argument in a function call allows an arbitray number of arguments be passed in its case


7. Stretch: What are blocks, procs, and lambdas?

  Your answer: blocks are {...}

  Researched answer:
