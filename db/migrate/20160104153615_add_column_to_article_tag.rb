class AddColumnToArticleTag < ActiveRecord::Migration
  def change
  	add_column :article_tags, :article_id, :integer
    add_column :article_tags, :tag_id, :integer
  end
end
