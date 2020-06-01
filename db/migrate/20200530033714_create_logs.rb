class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :req_method
      t.string :req_path
      t.integer :req_target_id
      t.string :req_params
      t.string :req_remote_ip
      t.string :message

      t.timestamps
    end
  end
end
