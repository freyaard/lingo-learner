class CreateWords < ActiveRecord::Migration[8.0]
  def change
    create_table :words do |t|
      t.string :word_in_language_a
      t.string :word_in_language_b
      t.string :type_of_word
      t.string :past_tense
      t.integer :times_correct_language_a
      t.integer :times_correct_language_b
      t.string :notes

      t.timestamps
    end
  end
end
