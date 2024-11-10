class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      # Basic Content Fields
      t.string :title, null: false
      t.text :content, null: false
      t.string :slug
      t.text :excerpt

      # Metadata
      t.datetime :published_at
      t.string :status, default: :draft
      t.boolean :featured, default: false

      # SEO Fields
      t.string :meta_title
      t.text :meta_description
      t.string :keywords

      # Relationships
      # t.references :author, foreign_key: { to_table: :users }
      # t.references :category, foreign_key: true

      # Analytics
      t.integer :view_count, default: 0
      t.integer :reading_time

      t.timestamps
    end

    add_index :articles, :slug, unique: true
  end
end
