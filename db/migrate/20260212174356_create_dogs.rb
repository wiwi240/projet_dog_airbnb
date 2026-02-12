class CreateDogs < ActiveRecord::Migration[8.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.belongs_to :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
