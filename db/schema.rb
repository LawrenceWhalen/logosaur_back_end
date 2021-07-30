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

ActiveRecord::Schema.define(version: 2021_07_30_234733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "vocabularies", force: :cascade do |t|
    t.integer "book_id"
    t.integer "user_id"
    t.bigint "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["word_id"], name: "index_vocabularies_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "word"
    t.string "definition"
    t.string "example"
    t.string "part_of_speech"
    t.string "synonyms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phonetic"
    t.string "phonetic_link"
  end

  add_foreign_key "vocabularies", "words"
end
