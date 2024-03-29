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

ActiveRecord::Schema.define(version: 2022_04_04_023157) do

  create_table "clusters", force: :cascade do |t|
    t.string "name"
    t.string "notation"
    t.integer "domain_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["domain_id"], name: "index_clusters_on_domain_id"
  end

  create_table "conceptual_categories", force: :cascade do |t|
    t.string "name"
    t.integer "Course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Course_id"], name: "index_conceptual_categories_on_Course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "domains", force: :cascade do |t|
    t.string "name"
    t.integer "conceptualCategory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conceptualCategory_id"], name: "index_domains_on_conceptualCategory_id"
  end

  create_table "standards", force: :cascade do |t|
    t.string "description"
    t.string "notation"
    t.integer "cluster_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cluster_id"], name: "index_standards_on_cluster_id"
  end

  add_foreign_key "clusters", "domains"
  add_foreign_key "conceptual_categories", "Courses"
  add_foreign_key "domains", "conceptualCategories"
  add_foreign_key "standards", "clusters"
end
