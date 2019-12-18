def line(katz_deli)
  puts "The line is currently empty." if katz_deli.length == 0
  return if katz_deli.length == 0

  string = "The line is currently:"
  katz_deli.each_with_index do |name, index|
    string << " #{index+1}. #{name}"
  end
  puts string
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  return katz_deli
end

def now_serving(katz_deli)
  puts "There is nobody waiting to be served!" if katz_deli.length == 0
  return katz_deli if katz_deli.length == 0
  puts "Currently serving #{katz_deli.shift}."
  return katz_deli
end
  