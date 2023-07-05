class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table "follows", force: :cascade do |t|
      t.bigint "follower_id"
      t.bigint "followed_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["followed_id"], name: "index_follows_on_followed_id"
      t.index ["follower_id"], name: "index_follows_on_follower_id"
    end
  end
end
