class CreateHotlists < ActiveRecord::Migration
  def change
    create_table :hotlists do |t|
      t.string :url
      t.references :bookmark, index: true

      t.timestamps
    end
  end
end
