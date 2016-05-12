class CreatePost2s < ActiveRecord::Migration
  def change
    create_table :post2s do |t|

      t.string "title2"
      t.string "content2"
      t.string "writer2"


      t.timestamps null: false
    end
  end
end
