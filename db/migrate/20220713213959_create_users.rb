class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo, default: 'https://picsum.photos/'
      t.text :bio
      t.integer :post_counter, default: 0, null: false
      t.string :timestamps

      t.timestamps
    end
  end
end
