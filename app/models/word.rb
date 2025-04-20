class Word < ApplicationRecord
  validates :word_in_language_a, :word_in_language_b, :type_of_word, :times_correct_language_a, :times_correct_language_b, presence: true
end
