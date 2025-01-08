class RenameTitleToNameInArticles < ActiveRecord::Migration[8.0]
  def change
    rename_column :articles, :title, :name
  end
end
