class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :bookmark_link

      t.timestamps
    end
  end
end
