require "application_system_test_case"

class ReviewanswersTest < ApplicationSystemTestCase
  setup do
    @reviewanswer = reviewanswers(:one)
  end

  test "visiting the index" do
    visit reviewanswers_url
    assert_selector "h1", text: "Reviewanswers"
  end

  test "creating a Reviewanswer" do
    visit reviewanswers_url
    click_on "New Reviewanswer"

    fill_in "Answer", with: @reviewanswer.answer_id
    fill_in "Question", with: @reviewanswer.question_id
    fill_in "Review", with: @reviewanswer.review_id
    click_on "Create Reviewanswer"

    assert_text "Reviewanswer was successfully created"
    click_on "Back"
  end

  test "updating a Reviewanswer" do
    visit reviewanswers_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @reviewanswer.answer_id
    fill_in "Question", with: @reviewanswer.question_id
    fill_in "Review", with: @reviewanswer.review_id
    click_on "Update Reviewanswer"

    assert_text "Reviewanswer was successfully updated"
    click_on "Back"
  end

  test "destroying a Reviewanswer" do
    visit reviewanswers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reviewanswer was successfully destroyed"
  end
end
