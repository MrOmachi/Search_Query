class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :title
      t.references :user, null: false, foreign_key: { o_table: :users}

      t.timestamps
    end
  end
end
