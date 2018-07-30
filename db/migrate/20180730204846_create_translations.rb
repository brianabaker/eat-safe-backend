class CreateTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :translations do |t|
      t.string :word
      t.string :content_default
      t.string :content_female
      t.belongs_to :allergen, index: true
      t.belongs_to :language, index: true
      t.timestamps
    end
  end
end
