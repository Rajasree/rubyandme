class CreateModuls < ActiveRecord::Migration
  def change
    create_table :moduls do |t|
      t.string :module_name
      t.timestamps
    end
  end
end
