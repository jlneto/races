# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_04_19_194618) do

  create_table "historico_pilotos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "piloto_id"
    t.bigint "prova_id"
    t.text "resultado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["piloto_id"], name: "index_historico_pilotos_on_piloto_id"
    t.index ["prova_id"], name: "index_historico_pilotos_on_prova_id"
  end

  create_table "pilotos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "nascimento"
    t.string "apelido"
    t.string "email"
    t.string "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.date "dia"
    t.string "horario"
    t.text "resultado"
    t.bigint "tracado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tracado_id"], name: "index_provas_on_tracado_id"
  end

  create_table "tracados", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "pista"
    t.string "imagem"
    t.decimal "melhor_tempo", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "historico_pilotos", "pilotos"
  add_foreign_key "historico_pilotos", "provas"
  add_foreign_key "provas", "tracados"
end
