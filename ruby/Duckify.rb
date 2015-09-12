puts "This is \"Duckify\", starring Duffy Duck!"
puts "You may ask him to say anything."
print "- Duffy Duck: What ith your name? "
user_name = gets.chomp
name = user_name.capitalize.gsub(/S/, "TH")
print "- Duffy Duck: Nice to meet you #{name}! "
print "I am Duffy Duck! Tell me what to thay. "
puts "You can thay \"thtop\" to thtop talking to me!"

user_input = ""
while true
    print "- #{user_name}: "
    user_input = gets.chomp
    if user_input == "stop"
        break
    elsif user_input.downcase.include? "s"
        user_input = user_input.gsub(/s/, "th").gsub(/S/, "TH")
        puts "Duffy Duck: #{user_input}"
    end
end
