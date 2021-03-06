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

ActiveRecord::Schema.define(version: 20160824000928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bolsa_familia_payments", force: :cascade do |t|
    t.string  "uf"
    t.string  "codigo_siafi_municipio"
    t.string  "nome_municipio"
    t.string  "codigo_funcao"
    t.string  "codigo_subfuncao"
    t.string  "codigo_programa"
    t.string  "codigo_acao"
    t.string  "nis_favorecido"
    t.string  "nome_favorecido"
    t.string  "fonte_finalidade"
    t.decimal "valor_parcela",          precision: 15, scale: 2
    t.date    "data_competencia"
  end

end
