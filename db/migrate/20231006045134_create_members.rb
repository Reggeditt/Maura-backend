class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :sex
      t.integer :age
      t.string :email
      t.string :phone
      t.datetime :dob
      t.string :photo
      t.string :address
      t.string :city
      t.string :landmark
      t.string :job_area
      t.string :job_type
      t.string :job_title
      t.string :job_description

      t.timestamps
    end
  end
end
