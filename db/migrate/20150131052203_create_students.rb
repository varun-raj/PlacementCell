class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.bigint :regno
      t.date :dob
      t.boolean :gender
      t.text :address
      t.bigint :mobile
      t.string :email
      t.integer :year
      t.integer :department_id
      t.float :tenth
      t.float :twelfth
      t.float :cgpa

      t.timestamps null: false
    end
  end
end
