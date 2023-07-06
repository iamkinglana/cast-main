class CreateCasts < ActiveRecord::Migration[7.0]
  def change
    create_table "casts", force: :cascade do |t|
      t.text "content"
      t.bigint "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["user_id"], name: "index_casts_on_user_id"
    end
  end
end
