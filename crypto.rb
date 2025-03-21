class Crypto
  def initialize(plaintext)
    @plaintext = plaintext
  end
end


class Crypto
  def initialize(plaintext)
    @normalized_text = normalize(plaintext)
  end

  def ciphertext
    return "" if @normalized_text.empty?
    
    r, c = determine_grid_size(@normalized_text.length)
    chunks = create_chunks(@normalized_text, c)
    encode_chunks(chunks, c, r)
  end

  private

  def normalize(text)
    text.downcase.gsub(/[^a-z0-9]/, '')
  end

  def determine_grid_size(length)
    c = Math.sqrt(length).ceil
    r = (length.to_f / c).ceil
    [r, c]
  end

  def create_chunks(text, c)
    text.chars.each_slice(c).map { |slice| slice.join.ljust(c) }
  end

  def encode_chunks(chunks, c, r)
    (0...c).map { |i| chunks.map { |row| row[i] }.join }.join(" ")
  end
end