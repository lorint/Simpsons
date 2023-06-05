# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_02_135609) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "athlete_id"
    t.bigint "interval_session_id"
    t.index ["athlete_id"], name: "index_attendances_on_athlete_id"
    t.index ["interval_session_id"], name: "index_attendances_on_interval_session_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "interval_sessions", force: :cascade do |t|
    t.string "name"
    t.datetime "dt"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "public_id"
    t.bigint "job_id", null: false
    t.integer "level"
    t.bigint "manager_id"
    t.text "blurb"
    t.string "url"
    t.index ["job_id"], name: "index_users_on_job_id"
    t.index ["manager_id"], name: "index_users_on_manager_id"
  end

  add_foreign_key "attendances", "interval_sessions"
  add_foreign_key "attendances", "users", column: "athlete_id"
  add_foreign_key "users", "jobs"
  add_foreign_key "users", "users", column: "manager_id"
end
