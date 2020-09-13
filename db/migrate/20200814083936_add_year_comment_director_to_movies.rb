class AddYearCommentDirectorToMovies < ActiveRecord::Migration[6.0]
  def change
  	add_column :movies, :year, :string
  	add_column :movies, :director, :string
  	add_column :movies, :comment, :text
  end
end
