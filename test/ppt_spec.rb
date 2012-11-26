require "ppt"

describe Ppt do
  it "Debe existir una tirada para el humano" do
	 Ppt.new().respond_to?("humano_tira").should == true
  end

  it "Debe existir una tirada para la maquina" do
	 Ppt.new().respond_to?("humano_tira").should == true
  end

end