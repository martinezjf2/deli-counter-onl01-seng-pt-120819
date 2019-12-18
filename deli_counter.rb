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
  return katz_deli
end