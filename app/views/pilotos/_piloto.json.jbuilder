json.extract! piloto, :id, :nome, :cpf, :nascimento, :apelido, :email, :celular, :created_at, :updated_at
json.url piloto_url(piloto, format: :json)
