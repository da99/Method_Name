require 'Method_Name/version'

def Method_Name? str
  
  return false if str[' ']
  return true unless str[Method_Name::INVALID_REGEXP]
  
  begin
    eval %!
      class Method_Name
        module Sandbox
          def #{str}
          end
        end
      end
    !

    true
  rescue Object => e
    false
  end

end # === def Method_Name

def Method_Name str
  
  File.basename(str.strip.downcase)
  .gsub( %r!#{Method_Name::INVALID_REGEXP}+!, '_' )
  
end # === def Method_Name

class Method_Name
  
  INVALID_REGEXP = %r![^a-z0-9\_]!i 
  
end # === class Method_Name
