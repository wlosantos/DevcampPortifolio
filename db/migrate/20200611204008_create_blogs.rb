class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false, default: '', limit: 80
      t.text :body,    null: false, default: ''

      t.timestamps
    end
  end
end
