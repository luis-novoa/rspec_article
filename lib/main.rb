# frozen_string_literal: true

class ClassyClass
  def sum(a, b)
    output = a + b
    output
  end

  def exists?
    puts 'Yes'
  end
end

class Citizen
  def initialize(name, job)
    @name = name
    @job = job
  end
end