class CreateAcceuils < ActiveRecord::Migration[6.1]
  def change
    create_table :acceuils do |t|
      t.string :title
      t.text :text
      t.text :photo
      t.string :author
      t.datetime :published_at

      t.timestamps
    end
  end
end
