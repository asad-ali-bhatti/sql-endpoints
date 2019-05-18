class CreateEndpoints < ActiveRecord::Migration[5.2]
  def change
    create_table :endpoints do |t|
      t.string :slug
      t.text :sql_statement

      t.timestamps
    end
  end
end
