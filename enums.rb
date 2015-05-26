require 'pry'

# 1. Take each number in a list and double it
# double_list([1,2,3,4]) => [2,4,6,8]

def double_list list
  result = []
  list.each do |number|
    doubled_number = number * 2
    result.push doubled_number
  end
  return result
end

l = [1,2,3,4]
#binding.pry

class Person
  def initialize first_name, last_name, email
    @first_name = first_name
    @last_name  = last_name
    @email      = email
  end

  # attr_reader :email
  def email
    @email
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

people = []

lines = File.read("people.csv").lines
lines.each do |line|
  line = line.chomp
  fields = line.split ","
  # first_name, last_name, _, email, _ = fields
  first_name = fields[0]
  last_name  = fields[1]
  email      = fields[3]
  
  person = Person.new first_name, last_name, email

  people.push person
end

# Have list people
# Get list of their email
emails = []
people.each do |person|
  email = person.email
  emails.push email
end


# unless double_list([1,2,3,4]) == [2,4,6,8]
#   raise "double_list not correct"
# end

# Short version
[1,2,3,4].map { |n| n * 2 }

people = lines.map do |line|
  first_name, last_name, _, email, _ = line.chomp.split ","
  Person.new first_name, last_name, email
end

emails = people.map { |person| person.email }
# people.map &:email

puts "Good to go!"