ALPHABET = ('A'..'Z').to_a

def encrypt(text)
  #  get an array of A-Z to use as a reference point
  #  split the text into letters
  #  find the index of each character
  #  subtract 3 from index
  #  find the  new character with the new index
  #  put it back together as a a string

  message = text.split('').map do |letter|
    index = ALPHABET.index(letter)
    index ? ALPHABET[index - 3] : letter
  end
  message.join
end
# if index.nil?
#   letter
# else
#   ALPHABET[index - 3]
# end
# array = [*"a".."z"]
