class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :subtitle
      t.integer :playtime
      t.string :media
      t.string :collection

      t.timestamps
    end
  end
end
