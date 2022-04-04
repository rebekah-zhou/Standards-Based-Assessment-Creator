class CreateClusters < ActiveRecord::Migration[6.1]
  def change
    create_table :clusters do |t|
      t.string :name
      t.string :notation
      t.belongs_to :domain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
