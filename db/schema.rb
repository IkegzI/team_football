# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_14_073821) do

  create_table "countries", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "owners_id"
    t.integer "visitors_id"
    t.date "date"
    t.integer "amount_owner"
    t.integer "amount_visitors"
    t.string "result"
    t.integer "country_id"
    t.integer "region_id"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_games_on_country_id"
    t.index ["owners_id"], name: "index_games_on_owners_id"
    t.index ["region_id"], name: "index_games_on_region_id"
    t.index ["visitors_id"], name: "index_games_on_visitors_id"
  end

  create_table "journal_players", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "team_id", null: false
    t.integer "game_id", null: false
    t.integer "type_action_id", null: false
    t.string "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_journal_players_on_game_id"
    t.index ["player_id"], name: "index_journal_players_on_player_id"
    t.index ["team_id"], name: "index_journal_players_on_team_id"
    t.index ["type_action_id"], name: "index_journal_players_on_type_action_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "birthday"
    t.integer "number"
    t.integer "position_id", null: false
    t.integer "region_id", null: false
    t.integer "country_id", null: false
    t.integer "team_id"
    t.date "start_play"
    t.date "end_play"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_players_on_country_id"
    t.index ["position_id"], name: "index_players_on_position_id"
    t.index ["region_id"], name: "index_players_on_region_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "title"
    t.integer "region_id", null: false
    t.integer "country_id", null: false
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_teams_on_country_id"
    t.index ["region_id"], name: "index_teams_on_region_id"
  end

  create_table "type_actions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "players", "countries"
  add_foreign_key "players", "positions"
  add_foreign_key "players", "regions"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "countries"
  add_foreign_key "teams", "regions"
end
