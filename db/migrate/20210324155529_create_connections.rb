class CreateConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :connections do |t|
      t.string :first_name
      t.string :last_name
      t.string :twitter
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
