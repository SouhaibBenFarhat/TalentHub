class CreateWorkExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :work_experiences do |t|
      t.string :title
      t.string :company_name
      t.string :description
      t.boolean :current_position, default: false
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
