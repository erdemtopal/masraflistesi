class CreateDuyurus < ActiveRecord::Migration[6.1]
  def change
    create_table :duyurus do |t|
      t.integer "user_id", null: false
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
