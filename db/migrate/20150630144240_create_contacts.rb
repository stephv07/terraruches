class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :nom
    	t.string :prenom
    	t.string :mail
    	t.string :avis

      t.timestamps null: false
    end
  end
end