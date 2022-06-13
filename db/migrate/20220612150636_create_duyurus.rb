class CreateDuyurus < ActiveRecord::Migration[6.1]
  def change
    create_table :duyurus do |t|
      t.references :admin, null: false, foreign_key: true
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
