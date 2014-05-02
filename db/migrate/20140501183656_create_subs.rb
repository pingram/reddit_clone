class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.string :name
      t.references :moderator, index: true

      t.timestamps
    end
  end
end
