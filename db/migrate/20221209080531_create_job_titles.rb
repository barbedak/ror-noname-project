class CreateJobTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :job_titles do |t|
      t.string :name

      t.timestamps
    end
  end
end
