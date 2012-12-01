class Ppt
  
	attr_reader :humano_tira, :maquina_tira

	@@jugadas_posibles = { :rock => :scissor, :paper => :rock, :scissor => :paper }
	@@tiradas_validas = @@jugadas_posibles.keys
	@@resultado_maquina = ["Empate", "La Maquina Pierde", "La Maquina Gana"]

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
		@humano_tira = humano_tira.to_sym
	end

	def obtener_maquina()
		@maquina_tira = @@tiradas_validas.sample
	end

	def resultado()
		case @maquina_tira
		when @humano_tira
			@@resultado_maquina[0]
		when @@jugadas_posibles[@humano_tira]
			@@resultado_maquina[1]
		else
			@@resultado_maquina[2]
		end
	end

	def jugar()
		case @maquina_tira
		when @humano_tira
			"Empate"
		when @@jugadas_posibles[@humano_tira]
			"humano gana"
		else
			"maquina gana"
		end
	end		
	
end


