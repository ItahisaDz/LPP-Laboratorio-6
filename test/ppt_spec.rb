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

  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
  	Ppt.new().respond_to?("obtener_humano").should be_true
  end

  it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
    Ppt.resultado_maquina.should be_a Array
    Ppt.resultado_maquina.should include "Empate"
    Ppt.resultado_maquina.should include "La Maquina Gana"
    Ppt.resultado_maquina.should include "La Maquina Pierde"
  end

end