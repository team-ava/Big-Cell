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

ActiveRecord::Schema.define(version: 2019_05_29_020731) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "fone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.float "preco"
    t.string "tipo"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.integer "produto_id"
    t.integer "cliente_id"
    t.float "valorServico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_vendas_on_produto_id"
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id"
  end

end
