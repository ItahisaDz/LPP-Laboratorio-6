class Ppt
  
	attr_reader :humano_tira, :maquina_tira

	@@jugadas_posibles = { :rock => :scissor, :paper => :rock, :scissor => :paper }
	@@tiradas_validas = @@jugadas_posibles.keys
	@@resultado_maquina = ["Empate", "La Maquina Gana", "La Maquina Pierde"]

	def Ppt.tiradas_validas
		@@tiradas_validas
	end

	def Ppt.jugadas_posibles
		@@jugadas_posibles
	end

	def Ppt.resultado_maquina
		@@resultado_maquina
	end

	def obtener_humano (humano_tira)
		raise unless @@tiradas_validas.include? humano_tira.to_sym
		@humano_tira = humano_tira
	end

	def obtener_maquina ()
		@maquina_tira = @@tiradas_validas.sample
	end




  
end