class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :type_name
      t.text :subject
	  t.text :description
	  t.string :link
      t.datetime :event_date
	  t.integer :priority
      t.references :modul
      t.timestamps
    end
  end
end
