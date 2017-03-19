class StringValidator
  CHAR_HASH  = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }
  L = CHAR_HASH.keys
  R = CHAR_HASH.values

  def validate(string)
    @char_array = []
    string.each_char do |char|
      if L.include?(char)
        @char_array << char
      elsif R.include?(char)
        return false if @char_array.empty? || CHAR_HASH[@char_array.pop] != char  
      end
    end
    p @char_array.empty?
  end
 
  end
  
end






