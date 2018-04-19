class CreateTracados < ActiveRecord::Migration[5.2]
  def change
    create_table :tracados do |t|
      t.string :nome
      t.string :pista
      t.string :imagem
      t.decimal :melhor_tempo

      t.timestamps
    end
  end
end
