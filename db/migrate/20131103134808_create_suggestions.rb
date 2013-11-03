class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.text :comment
      t.integer :votes

      t.timestamps
    end
  end
end
