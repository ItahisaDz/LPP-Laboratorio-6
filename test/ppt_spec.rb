require "ppt"

describe Ppt do

  it "Debe existir una tirada para el humano" do
	 Ppt.new().respond_to?("humano_tira").should == true
  end

  it "Debe existir una tirada para la maquina" do
	 Ppt.new().respond_to?("humano_tira").should == true
  end

  it "Debe existir una lista de tiradas validas" do
	Ppt.tiradas_validas.should be_a Array
	Ppt.tiradas_validas.should include :rock
	Ppt.tiradas_validas.should include :paper
	Ppt.tiradas_validas.should include :scissor
  end

  it "Debe existir una lista de jugadas posibles y quien gana" do
  	Ppt.jugadas_posibles.should be_a Hash
  	Ppt.jugadas_posibles.should include :rock => :scissor
  	Ppt.jugadas_posibles.should include :paper => :rock
  	Ppt.jugadas_posibles.should include :scissor => :paper
  end

end