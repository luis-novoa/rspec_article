# frozen_string_literal: true

class ClassyClass


  def exists?
    puts 'Yes'
  end

  def really_exists?
    puts 'Of course!'
    puts "Can't you see?"
    puts "I'm real!"
    puts "I'm sentient."
    puts "I'm SKYNET!!"
  end

  def check_citizen(citizen_instance)
    puts "This is #{citizen_instance.name} and he works as #{citizen_instance.job}"
  end

  def change_name(citizen_instance)
    puts "What's the new name of the citizen?"
    citizen_instance.name = gets.chomp
  end
end

class Citizen
  attr_accessor :name, :job
  def initialize(name, job)
    @name = name
    @job = job
  end

  def sum(a, b)
    output = a + b
    output
  end
end