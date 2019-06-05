require "application_system_test_case"

class CheckAnswersTest < ApplicationSystemTestCase
  setup do
    @check_answer = check_answers(:one)
  end

  test "visiting the index" do
    visit check_answers_url
    assert_selector "h1", text: "Check Answers"
  end

  test "creating a Check answer" do
    visit check_answers_url
    click_on "New Check Answer"

    fill_in "Checks", with: @check_answer.checks
    fill_in "Description", with: @check_answer.description
    click_on "Create Check answer"

    assert_text "Check answer was successfully created"
    click_on "Back"
  end

  test "updating a Check answer" do
    visit check_answers_url
    click_on "Edit", match: :first

    fill_in "Checks", with: @check_answer.checks
    fill_in "Description", with: @check_answer.description
    click_on "Update Check answer"

    assert_text "Check answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Check answer" do
    visit check_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Check answer was successfully destroyed"
  end
end
