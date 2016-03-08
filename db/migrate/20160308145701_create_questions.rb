class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.boolean :chocolate
      t.boolean :rainbows
      t.boolean :puppies
      t.boolean :cash

      t.timestamps null: false
    end
  end
end
