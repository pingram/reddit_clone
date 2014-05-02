class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.references :user, index: true

      t.timestamps
    end
  end
end
