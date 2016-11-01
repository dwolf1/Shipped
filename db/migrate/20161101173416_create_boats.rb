class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :amount_that_can_be_shipped
      t.string :location 
      t.references :job, foreign_key: true
      t.timestamps
    end
  end
end
