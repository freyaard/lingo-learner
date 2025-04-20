json.extract! word, :id, :word_in_language_a, :word_in_language_b, :type_of_word, :past_tense, :times_correct_language_a, :times_correct_language_b, :notes, :created_at, :updated_at
json.url word_url(word, format: :json)
