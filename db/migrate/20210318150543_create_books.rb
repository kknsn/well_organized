class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string     :title        , null: false
      t.integer    :genre_id     , null: false
      t.string     :thought      , null: false
      t.string     :motivation
      t.string     :important
      t.string     :reason
      t.string     :personal
      t.string     :act
      t.references :user        , foreign_key: true
      t.timestamps
    end
  end
end

