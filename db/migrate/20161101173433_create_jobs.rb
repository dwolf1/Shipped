class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :amount_of_containers
      t.integer :amount_needed_for_job
      t.integer :cost_of_job
      t.references :boat, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
