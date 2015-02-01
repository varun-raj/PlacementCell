class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.float :min_tenth
      t.float :min_twelfth
      t.float :min_cgpa
      t.timestamps null: false
    end
  end
end
