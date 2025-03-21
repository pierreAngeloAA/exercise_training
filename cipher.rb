class Cipher
  @@alphabet = ('a'..'z').to_a

  attr_reader :key

  def initialize(key = nil)
    if key.nil?
      @key = Array.new(100) { @@alphabet.sample }.join 
    elsif key.match?(/\A[a-z]+\z/) 
      @key = key
    else
      raise ArgumentError, "La clave solo puede contener letras minúsculas"
    end
  end

  def encode(plaintext)
    new_text = []

    plaintext.chars.each_with_index do |char, index|
      shift = @@alphabet.index(@key[index % @key.length])
      new_char = @@alphabet[(@@alphabet.index(char) + shift) % 26]
      new_text << new_char
    end

    new_text.join
  end

  def decode(ciphertext)
    original_text = []

    ciphertext.chars.each_with_index do |char, index|
      shift = @@alphabet.index(@key[index % @key.length])
      new_char = @@alphabet[(@@alphabet.index(char) - shift) % 26]
      original_text << new_char
    end

    original_text.join
  end
end

plaintext = 'iamapandabear'
ciphertext = 'qayaeaagaciai'

puts c =Cipher.new('iamapandabear')


puts c.encode(plaintext)
#puts  "#{Cipher.alphabet}"
