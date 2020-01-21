# frozen_string_literal: true

class ClassyClass
  def sum(a, b)
    output = a + b
    output
  end

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
end

class Citizen
  attr_reader :name, :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end