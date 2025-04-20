require "application_system_test_case"

class WordsTest < ApplicationSystemTestCase
  setup do
    @word = words(:one)
  end

  test "visiting the index" do
    visit words_url
    assert_selector "h1", text: "Words"
  end

  test "should create word" do
    visit words_url
    click_on "New word"

    fill_in "Notes", with: @word.notes
    fill_in "Past tense", with: @word.past_tense
    fill_in "Times correct language a", with: @word.times_correct_language_a
    fill_in "Times correct language b", with: @word.times_correct_language_b
    fill_in "Type of word", with: @word.type_of_word
    fill_in "Word in language a", with: @word.word_in_language_a
    fill_in "Word in language b", with: @word.word_in_language_b
    click_on "Create Word"

    assert_text "Word was successfully created"
    click_on "Back"
  end

  test "should update Word" do
    visit word_url(@word)
    click_on "Edit this word", match: :first

    fill_in "Notes", with: @word.notes
    fill_in "Past tense", with: @word.past_tense
    fill_in "Times correct language a", with: @word.times_correct_language_a
    fill_in "Times correct language b", with: @word.times_correct_language_b
    fill_in "Type of word", with: @word.type_of_word
    fill_in "Word in language a", with: @word.word_in_language_a
    fill_in "Word in language b", with: @word.word_in_language_b
    click_on "Update Word"

    assert_text "Word was successfully updated"
    click_on "Back"
  end

  test "should destroy Word" do
    visit word_url(@word)
    accept_confirm { click_on "Destroy this word", match: :first }

    assert_text "Word was successfully destroyed"
  end
end
