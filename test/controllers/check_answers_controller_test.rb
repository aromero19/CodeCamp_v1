require 'test_helper'

class CheckAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_answer = check_answers(:one)
  end

  test "should get index" do
    get check_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_check_answer_url
    assert_response :success
  end

  test "should create check_answer" do
    assert_difference('CheckAnswer.count') do
      post check_answers_url, params: { check_answer: { checks: @check_answer.checks, description: @check_answer.description } }
    end

    assert_redirected_to check_answer_url(CheckAnswer.last)
  end

  test "should show check_answer" do
    get check_answer_url(@check_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_answer_url(@check_answer)
    assert_response :success
  end

  test "should update check_answer" do
    patch check_answer_url(@check_answer), params: { check_answer: { checks: @check_answer.checks, description: @check_answer.description } }
    assert_redirected_to check_answer_url(@check_answer)
  end

  test "should destroy check_answer" do
    assert_difference('CheckAnswer.count', -1) do
      delete check_answer_url(@check_answer)
    end

    assert_redirected_to check_answers_url
  end
end
