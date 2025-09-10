class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :category
      t.datetime :date_from
      t.datetime :date_to
      t.text :description

      t.timestamps
    end
  end
end
