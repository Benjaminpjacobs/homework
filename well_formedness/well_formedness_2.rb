class StringValidator
  # att_reader :chars

  CHARSET = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  def dynamic_validation_chars(array)
    charset = {}
    array.each{ |c| charset[c[0]] = c[1]}
    return charset
  end
  
  def validate(string, charset=CHARSET)
    if charset.is_a?(Array)
      charset = dynamic_validation_chars(charset)
    end
    chars = string.gsub(/[^\[\]\{\}\(\)]/, '')
    loop do
      s = chars.gsub("()", '').gsub("[]", '').gsub("{}", '')
      return true if s.empty?
      return false if s.length.odd? || charset.values.include?(s[0]) || s == chars
    end    
  end
end