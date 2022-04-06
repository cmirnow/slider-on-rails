class CreateSliders < ActiveRecord::Migration[6.1]
  def change
    create_table :sliders do |t|
      t.string :name
      t.datetime :published_at
      t.integer :interval
      t.float :dark
      t.boolean :fade
      t.text :captions
      t.string :color

      t.timestamps
    end
  end
end
