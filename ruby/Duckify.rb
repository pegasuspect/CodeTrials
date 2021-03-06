$user_name = ""

def greeting
    puts "This is \"Duckify\", starring Duffy Duck!"
    puts "You may ask him to say anything."
end

def initializeApp
    greeting
    duffy_say "What is your name? ", false
    $user_name = gets.chomp
    name = $user_name.capitalize.gsub(/S/, "TH")

    duffy_say "Nice to meet you #{name}! I am Duffy Duck! Tell me what to say. You can say \"stop\" to stop talking to me!"
end

def say username, text, nl = true
    print "- #{username}: #{text}" + (nl ? "\n" : "")
end

def duffy_say text, nl = true
    text = text.gsub(/s/, "th").gsub(/S/, "TH")    
    say "Duffy Duck", text, nl
end

initializeApp

while true
    say $user_name, "", false
    user_input = gets.chomp
    if user_input == "stop"
       duffy_say "ok, bye :)"
       break
    end

    duffy_say user_input
end