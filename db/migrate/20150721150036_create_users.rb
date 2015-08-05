class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.boolean :is_active
      t.references :role
      t.timestamps
    end
  end
end
