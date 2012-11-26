class Ppt
  
	attr_reader :humano_tira, :maquina_tira

	@@jugadas_posibles = { :rock => :scissor, :paper => :rock, :scissor => :paper }
	@@tiradas_validas = @@jugadas_posibles.keys

	def Ppt.tiradas_validas
		@@tiradas_validas
	end

	def Ppt.jugadas_posibles
		@@jugadas_posibles
	end

	def obtener_humano (humano_tira)
		raise unless @@tiradas_validas.include? humano_tira.to_sym
		@humano_tira = humano_tira
	end
  
end