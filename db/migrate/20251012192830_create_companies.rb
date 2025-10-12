class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :ticker
      t.decimal :current_revenue
      t.decimal :previous_revenue
      t.date :milestone_crossed_at
      t.integer :milestone_amount

      t.timestamps
    end
  end
end
