class CreateProfessions < ActiveRecord::Migration
  def change
    drop_table :professions
    create_table :professions do |t|
      t.string :name
      t.references :employee

      t.timestamps
    end
    add_index :professions, :employee_id
  end
end
