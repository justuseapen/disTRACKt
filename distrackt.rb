distractions = File.read("Distrackttally.txt")

puts "What would you like to do (add track(s) or review tracks)?"
request = gets.chomp
request.downcase

	if request == "add track"
		distractions = distractions.to_i + 1
		puts "You have #{distractions} tracks."
	elsif request == "add tracks"
		puts "How many times have you been distracted since we last met?"
		answer = gets.chomp
		distractions = distractions + answer.to_i
		puts "You have #{distractions} tracks."
	elsif request == "review tracks"
		puts distractions
	end

File.open("Distrackttally.txt", 'w') {|f| f.write(distractions) }

