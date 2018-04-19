class CreateProvas < ActiveRecord::Migration[5.2]
  def change
    create_table :provas do |t|
      t.string :nome
      t.date :dia
      t.string :horario
      t.text :resultado
      t.belongs_to :tracado, foreign_key: true

      t.timestamps
    end
  end
end
