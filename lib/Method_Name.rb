require 'Method_Name/version'

def Method_Name? raw_name
  name = raw_name.to_s
  return false if name[' ']
  return false if name.to_s.strip.empty?
  return true unless name[Method_Name::INVALID_REGEXP]
  
  begin
    eval %!
      class Method_Name
        module Sandbox
          def #{name}
          end
        end
      end
    !

    true
  rescue Object => e
    false
  end

end # === def Method_Name

def Method_Name name
  
  new_name = File.basename(name.strip.downcase)
  .gsub( %r!#{Method_Name::INVALID_REGEXP}+!, '_' )

  return nil unless Method_Name?(new_name)
  new_name
  
end # === def Method_Name

class Method_Name
  
  INVALID_REGEXP = %r![^a-z0-9\_]!i 
  
end # === class Method_Name
