class Ppt
  
	attr_reader :humano_tira, :maquina_tira

	@@jugadas_posibles = {:rock => :scissor, :paper => :rock, :scissor => :paper}
	@@tiradas_validas = @@jugadas_posibles.keys

	def Ppt.tiradas_validas
		@@tiradas_validas
	end

	def Ppt.jugadas_posibles
		@@jugadas_posibles
	end
  
end