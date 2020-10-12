class CreateJobApps < ActiveRecord::Migration[5.2]
  def change
    create_table :job_apps do |t|
      t.string :First
      t.string :Name
      t.string :Last
      t.string :Name
      t.numeric :Phone
      t.string :Job
      t.text :Role
      t.text :Place

      t.timestamps
    end
  end
end
