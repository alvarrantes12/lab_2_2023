ActiveRecord::Schema[7.0].define(version: 2023_05_09_164423) do
  enable_extension "plpgsql"

  create_table "owners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "owner_id"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "first_name"
    t.string "breed"
    t.boolean "pedigree"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_pets_on_owner_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "category"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
