class CreateConceptualCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :conceptual_categories do |t|
      t.string :name
      t.belongs_to :Course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
