require 'test_helper'

class WorkExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_experience = work_experiences(:one)
  end

  test "should get index" do
    get work_experiences_url, as: :json
    assert_response :success
  end

  test "should create work_experience" do
    assert_difference('WorkExperience.count') do
      post work_experiences_url, params: { work_experience: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show work_experience" do
    get work_experience_url(@work_experience), as: :json
    assert_response :success
  end

  test "should update work_experience" do
    patch work_experience_url(@work_experience), params: { work_experience: {  } }, as: :json
    assert_response 200
  end

  test "should destroy work_experience" do
    assert_difference('WorkExperience.count', -1) do
      delete work_experience_url(@work_experience), as: :json
    end

    assert_response 204
  end
end
