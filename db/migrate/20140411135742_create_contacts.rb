class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :occupation
      t.string :telephone
      t.references :client, index: true

      t.timestamps
    end
  end
end
