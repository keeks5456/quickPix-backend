class CreatePortraits < ActiveRecord::Migration[6.0]
  def change
    create_table :portraits do |t|
      t.string :img_url
      t.string :description
      t.integer :like
      t.integer :user_id

      t.timestamps
    end
  end
end
