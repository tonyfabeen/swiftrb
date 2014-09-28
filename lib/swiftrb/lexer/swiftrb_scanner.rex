class SwiftrbScanner

rule
  class         { [:CLASS, text] }
  let           { [:IMMUTABLE_VAR, text] }
  var           { [:MUTABLE_VAR, text] }
  [a-zA-Z]+     { [:IDENTIFIER, text] }

inner
  def tokenize(code)
    scan_setup(code)
    tokens = []
    while token = next_token
      tokens << token
    end
    tokens
  end

end
