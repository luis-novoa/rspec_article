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
end

class Citizen
  def initialize(name, job)
    @name = name
    @job = job
  end
end