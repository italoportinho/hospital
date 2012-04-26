class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :cpf
      t.string :contact

      t.timestamps
    end
  end
end
