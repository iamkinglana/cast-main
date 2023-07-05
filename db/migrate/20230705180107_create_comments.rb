class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table "comments", force: :cascade do |t|
      t.text "content"
      t.bigint "user_id"
      t.bigint "cast_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["cast_id"], name: "index_comments_on_cast_id"
      t.index ["user_id"], name: "index_comments_on_user_id"
    end
  end
end
