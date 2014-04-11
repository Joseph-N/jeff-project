class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.text :description
      t.references :service, index: true

      t.timestamps
    end
  end
end
