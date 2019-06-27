class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :high_score
      t.string :hometown
      t.string :fun_fact

      t.timestamps
    end
  end
end
