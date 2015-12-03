# Print the last index where you are able to form "AUTOBOT", given a string as input
# The letters making up "AUTOBOT" need not be in order, index starts with 0
#
# HATJFUJBQWOOLSTSD => 14
# AUTOBO => -1
# TOBAOERT CKTABUS => 14
# AUTOBOTAUTOBOT => 6

string = gets.chomp.split("")
word = string.map{|i| i.downcase}
req_word = "autobot".split("")
count = word.find_all { |x| word.count(x)>=2 }.uniq
my = []

if (req_word - word).empty? && (count.include?'o') && (count.include?'t')
  for i in 0..(word.length-1)
    if word[i]=='a' || word[i]=='u' || word[i]=='t' || word[i]=='o' || word[i]=='b'
      my << word[i]
      if (my.include?'a')&&(my.include?'u')&&(my.include?'t')&&(my.include?'o')&&(my.include?'b')&&(my.include?'t')&&(my.count('t')>=2 )&&(my.count('o')>=2)
        puts "AUTOBOT found! Index for #{word[i]} is #{i}"
        break
      end
    end
  end
elsif
  puts "-1"
end
