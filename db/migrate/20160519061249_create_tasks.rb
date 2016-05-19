class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
