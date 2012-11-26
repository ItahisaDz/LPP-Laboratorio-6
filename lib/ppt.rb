class Ppt
  
	attr_reader :humano_tira, :maquina_tira

	@@tiradas_validas = [:rock, :paper, :scissor]

	def Ppt.tiradas_validas
		@@tiradas_validas
	end
  
end