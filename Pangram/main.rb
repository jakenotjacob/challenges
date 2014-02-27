PANGRAM = ('a'..'z').to_a

puts "Enter string to check: "
s = gets.chomp.downcase

s = s.scan(/\w+/).inject(:+)
s = s.chars.uniq.sort

if s == PANGRAM
  puts "It IS a pangram!"
else
  puts "Not a pangram!"
end



