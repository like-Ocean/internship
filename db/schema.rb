ActiveRecord::Schema[7.1].define(version: 2023_11_17_200357) do

  enable_extension "plpgsql"

  create_table "consultation_requests", force: :cascade do |t|
    t.bigint "patient_id"
    t.text "message"
    t.date "creation_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_consultation_requests_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.text "full_name"
    t.date "date_birth"
    t.decimal "phone"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.bigint "consultation_request_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consultation_request_id"], name: "index_recommendations_on_consultation_request_id"
  end

  add_foreign_key "consultation_requests", "patients"
  add_foreign_key "recommendations", "consultation_requests"
end
