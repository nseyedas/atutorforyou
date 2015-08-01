require 'test_helper'

class GradeMateReviewsControllerTest < ActionController::TestCase
  setup do
    @grade_mate_review = grade_mate_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grade_mate_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grade_mate_review" do
    assert_difference('GradeMateReview.count') do
      post :create, grade_mate_review: { course: @grade_mate_review.course, school: @grade_mate_review.school, teacher: @grade_mate_review.teacher }
    end

    assert_redirected_to grade_mate_review_path(assigns(:grade_mate_review))
  end

  test "should show grade_mate_review" do
    get :show, id: @grade_mate_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grade_mate_review
    assert_response :success
  end

  test "should update grade_mate_review" do
    patch :update, id: @grade_mate_review, grade_mate_review: { course: @grade_mate_review.course, school: @grade_mate_review.school, teacher: @grade_mate_review.teacher }
    assert_redirected_to grade_mate_review_path(assigns(:grade_mate_review))
  end

  test "should destroy grade_mate_review" do
    assert_difference('GradeMateReview.count', -1) do
      delete :destroy, id: @grade_mate_review
    end

    assert_redirected_to grade_mate_reviews_path
  end
end
