class CreatePilotos < ActiveRecord::Migration[5.2]
  def change
    create_table :pilotos do |t|
      t.string :nome
      t.string :cpf
      t.date :nascimento
      t.string :apelido
      t.string :email
      t.string :celular

      t.timestamps
    end
  end
end
