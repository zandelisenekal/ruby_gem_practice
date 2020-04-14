require 'faker'
require 'colorize'

puts "What is your name?"
name = gets.chomp.capitalize
puts "Hi #{name} welcome to the worlds best fun fact generator."
sleep(2)

def fun_fact
    puts Faker::ChuckNorris.fact.colorize(:green)
end

def no_fact
system "clear"
    puts "Thank you for listening to my fun facts! Good bye"
end

continue = true
while continue
    puts "Would you like to hear a fun fact? Options: yes/no"
    reply = gets.strip.downcase
    case reply
    when "yes"
        fun_fact
        "\n"
        sleep(2)
    when "no"
        continue = false
        no_fact
    else 
        puts "Invalid selection, please try again."
    end
end








    
