require "pry"

class Person
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi my name is #{name}"
	end
end

class Student < Person
	def learn
		puts "I get it!"
	end

end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

instructor = Instructor.new("Chris")
student = Student.new("Christina")

instructor.greeting
student.greeting

instructor.teach #can call on the teach method because it is within the class it was initialized to
student.learn

student.teach #can't inherit a method from another class unless it has been specified as such ie. if we used the < to inherit it could, or if those methods were in people we they could be accessed.
instructor.learn

binding.pry