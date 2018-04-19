class HistoricoPiloto < ApplicationRecord
  belongs_to :piloto
  belongs_to :prova
end
