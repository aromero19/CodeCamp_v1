require 'test_helper'

class ReviewanswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reviewanswer = reviewanswers(:one)
  end

  test "should get index" do
    get reviewanswers_url
    assert_response :success
  end

  test "should get new" do
    get new_reviewanswer_url
    assert_response :success
  end

  test "should create reviewanswer" do
    assert_difference('Reviewanswer.count') do
      post reviewanswers_url, params: { reviewanswer: { answer_id: @reviewanswer.answer_id, question_id: @reviewanswer.question_id, review_id: @reviewanswer.review_id } }
    end

    assert_redirected_to reviewanswer_url(Reviewanswer.last)
  end

  test "should show reviewanswer" do
    get reviewanswer_url(@reviewanswer)
    assert_response :success
  end

  test "should get edit" do
    get edit_reviewanswer_url(@reviewanswer)
    assert_response :success
  end

  test "should update reviewanswer" do
    patch reviewanswer_url(@reviewanswer), params: { reviewanswer: { answer_id: @reviewanswer.answer_id, question_id: @reviewanswer.question_id, review_id: @reviewanswer.review_id } }
    assert_redirected_to reviewanswer_url(@reviewanswer)
  end

  test "should destroy reviewanswer" do
    assert_difference('Reviewanswer.count', -1) do
      delete reviewanswer_url(@reviewanswer)
    end

    assert_redirected_to reviewanswers_url
  end
end
