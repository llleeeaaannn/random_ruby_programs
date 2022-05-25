def caesar_cipher(string, shift)
  output = ''
  string.each_char do |char|
    if char.ord < 91
      base = 65
    else
      base = 97
    end
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      move = (((char.ord - base) + shift) % 26) + base
      output += move.chr
    else
      output += char
    end
  end
  print output
end
