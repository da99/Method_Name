
describe "Method_Name?" do
  
  it "returns true if string only has: a-z A-Z 0-9 \_" do
    Method_Name?('a_z_0_9').should == true
  end

  it "returns false if string has invalid characters: - . " do
    Method_Name?('a-z-0.9').should == false
  end
  
  it "returns true for '>>'" do
    Method_Name?('>>').should == true
  end
  
  it "returns false if name has a space" do
    Method_Name?("name anem").should == false
  end

  it "returns false for: $? " do
    Method_Name?("$?").should == false
  end
  
end # === Method_Name?

describe "Method_Name" do
  
  it "returns a stripped string" do
    Method_Name(' str ').should == 'str'
  end

  it "applies File.basename on string" do
    Method_Name('/dir/file').should == 'file'
  end

  it "replaces consecutive invalid characters with underscore: a--b--c" do
    Method_Name('a--b--c').should == 'a_b_c'
  end
  
end # === Method_Name

