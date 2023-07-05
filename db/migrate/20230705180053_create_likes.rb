class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table "likes", force: :cascade do |t|
      t.bigint "user_id"
      t.bigint "cast_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["cast_id"], name: "index_likes_on_cast_id"
      t.index ["user_id"], name: "index_likes_on_user_id"
    end
  end
end
