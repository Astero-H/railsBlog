class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string  :title
      t.string  :description
      t.date    :date
      t.string  :image
      t.integer :author_id

      t.timestamps
    end
  end
end
