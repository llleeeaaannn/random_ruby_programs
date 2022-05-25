def substrings(string, dictionary)
  substring_hash = Hash.new(0)
  dictionary.each { |substring| substring.downcase! }
  words = string.downcase.split(" ")
  words.each do |word|
    dictionary.each do |sub|
      if word.include?(sub)
        substring_hash[sub] += 1
      end
    end
  end
  print substring_hash
end
