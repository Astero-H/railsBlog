class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string  :title
      t.string  :description
      t.attachment   :image
      t.integer :user_id

      t.timestamps
    end
  end
end
