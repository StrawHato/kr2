module Printable
  def print_info
    puts "Information about the object:"
    instance_variables.each do |var|
      puts "#{var}: #{instance_variable_get(var)}"
    end
  end
end

class ExampleClass
  include Printable

  def initialize(name, age, group, lang)
    @name = name
    @age = age
    @group = group
    @language = lang
  end
end

example_object = ExampleClass.new("Maksim Pakula", 20, "CS - 32", "Ruby")

example_object.print_info
