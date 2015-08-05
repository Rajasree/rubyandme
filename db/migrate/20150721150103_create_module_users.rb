class CreateModuleUsers < ActiveRecord::Migration
  def change
    create_table :module_users do |t|
      t.references :modul
      t.references :user
      t.timestamps
    end
  end
end
