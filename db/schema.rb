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

ActiveRecord::Schema.define(version: 2020_04_08_073150) do

  create_table "centres", force: :cascade do |t|
    t.string "adresse"
    t.integer "telephone"
    t.text "info_diverses"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["user_id"], name: "index_centres_on_user_id"
  end

  create_table "slots", force: :cascade do |t|
    t.date "date"
    t.time "h_debut"
    t.time "h_fin"
    t.string "type_mission"
    t.text "consignes"
    t.integer "user_id"
    t.integer "center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["center_id"], name: "index_slots_on_center_id"
    t.index ["user_id"], name: "index_slots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "email"
    t.integer "telephone"
    t.boolean "statut_admin_benevole"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
