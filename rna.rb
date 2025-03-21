class InvalidCodonError < StandardError; end
module Translation
  ARN = {
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
    "UUA" => "Leucine",
    "UUG" => "Leucine",
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
    "UAU" => "Tyrosine",
    "UAC" => "Tyrosine",
    "UGU" => "Cysteine",
    "UGC" => "Cysteine",
    "UGG" => "Tryptophan",
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP"
  }

  def self.of_rna(strand)
    rna = []
    strand.scan(/.{1,3}/).each do |i|
      raise InvalidCodonError, "Invalid codon: #{i}" unless ARN.key?(i)

      if ARN[i] != "STOP"
        rna << ARN[i]
      else
        return rna
      end
    end
    rna
  end
end

strand = "UUUUUU"
puts Translation.of_rna(strand)