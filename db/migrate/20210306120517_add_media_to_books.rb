class AddMediaToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :media, :string
  end
end
