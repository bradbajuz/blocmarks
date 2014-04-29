class CreateIncomings < ActiveRecord::Migration
  def change
    create_table :incomings do |t|
      t.string :sender
      t.string :subject
      t.string :body_plain

      t.timestamps
    end
  end
end
