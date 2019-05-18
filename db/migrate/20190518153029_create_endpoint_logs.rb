class CreateEndpointLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :endpoint_logs do |t|
      t.integer :endpoint_id

      t.timestamps
    end
  end
end
