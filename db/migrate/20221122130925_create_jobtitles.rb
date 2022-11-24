class CreateJobtitles < ActiveRecord::Migration[7.0]
  def change
    create_table :jobtitles do |t|
      t.string :title

      t.timestamps
    end
  end
end
