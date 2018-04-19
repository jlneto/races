class CreateHistoricoPilotos < ActiveRecord::Migration[5.2]
  def change
    create_table :historico_pilotos do |t|
      t.belongs_to :piloto, foreign_key: true
      t.belongs_to :prova, foreign_key: true
      t.text :resultado

      t.timestamps
    end
  end
end
