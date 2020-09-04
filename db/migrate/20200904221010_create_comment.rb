class CreateComment < ActiveRecord::Migration[6.0]
  def change
    create_table :comment do |t|
      t.string :content
      t.integer :portrait_id
      t.timestamps
    end
  end
end
