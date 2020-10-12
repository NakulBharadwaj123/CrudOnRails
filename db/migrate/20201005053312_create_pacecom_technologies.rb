class CreatePacecomTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :pacecom_technologies do |t|
      t.string :First_Name
      t.string :Last_Name
      t.integer :Phone
      t.text :Job_Role
      t.text :Place

      t.timestamps
    end
  end
end
