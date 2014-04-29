class DropIncomingsTable < ActiveRecord::Migration
  def up
    drop_table :incomings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
