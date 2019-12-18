def line(katz_deli)
  puts "The line is currently empty." if katz_deli.length == 0
  string = "The linen is currently:"
  katz_deli.each_with_index do |name, index|
    string << "#{index+1}. #{name}"
  end
  puts string
    
end