# student_count = 11
# # first, put the students into an array
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november}, 
#   {name:"Darth Vader", cohort: :november}, 
#   {name:"Nurse Ratched", cohort: :november}, 
#   {name:"Michael Corleone", cohort: :november}, 
#   {name:"Alex DeLarge", cohort: :november}, 
#   {name:"The Wicked Witch of the West", cohort: :november}, 
#   {name:"Terminator", cohort: :november}, 
#   {name:"Freddy Krueger", cohort: :november}, 
#   {name:"The Joker", cohort: :november}, 
#   {name:"Joffrey Baratheon", cohort: :november}, 
#   {name:"Norman Bates", cohort: :november}
# ]
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(student_info)
  student_info.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(student_info)
  puts "Overall, we have #{student_info.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)