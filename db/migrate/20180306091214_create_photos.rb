class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :photoUrl
      t.string :description
      t.string :rating
      t.string :tag
      t.string :user

      t.timestamps
    end
  end
end
