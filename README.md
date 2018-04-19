rails g scaffold Tracado nome pista imagem melhor_tempo:decimal
rails g scaffold Prova nome dia:date horario resultado:texta tracado:belongs_to
rails g scaffold Piloto nome cpf nascimento:date apelido email celular
rails g model HistoricoPiloto piloto:belongs_to prova:belongs_to resultado:json
rails g controller home index 

