class CreateArticleTags < ActiveRecord::Migration
  def change
    create_table :article_tags do |t|

      t.timestamps null: false
    end
  end
end
