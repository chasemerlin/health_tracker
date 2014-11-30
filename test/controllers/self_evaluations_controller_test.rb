require 'test_helper'

class SelfEvaluationsControllerTest < ActionController::TestCase
  setup do
    @self_evaluation = self_evaluations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:self_evaluations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create self_evaluation" do
    assert_difference('SelfEvaluation.count') do
      post :create, self_evaluation: { breakfast: @self_evaluation.breakfast, comments: @self_evaluation.comments, dinner: @self_evaluation.dinner, drink: @self_evaluation.drink, exercise: @self_evaluation.exercise, hours_slept: @self_evaluation.hours_slept, lunch: @self_evaluation.lunch, meds: @self_evaluation.meds, rating: @self_evaluation.rating, smoke: @self_evaluation.smoke, snacks_text: @self_evaluation.snacks_text, time_logged: @self_evaluation.time_logged, worked_out: @self_evaluation.worked_out }
    end

    assert_redirected_to self_evaluation_path(assigns(:self_evaluation))
  end

  test "should show self_evaluation" do
    get :show, id: @self_evaluation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @self_evaluation
    assert_response :success
  end

  test "should update self_evaluation" do
    patch :update, id: @self_evaluation, self_evaluation: { breakfast: @self_evaluation.breakfast, comments: @self_evaluation.comments, dinner: @self_evaluation.dinner, drink: @self_evaluation.drink, exercise: @self_evaluation.exercise, hours_slept: @self_evaluation.hours_slept, lunch: @self_evaluation.lunch, meds: @self_evaluation.meds, rating: @self_evaluation.rating, smoke: @self_evaluation.smoke, snacks_text: @self_evaluation.snacks_text, time_logged: @self_evaluation.time_logged, worked_out: @self_evaluation.worked_out }
    assert_redirected_to self_evaluation_path(assigns(:self_evaluation))
  end

  test "should destroy self_evaluation" do
    assert_difference('SelfEvaluation.count', -1) do
      delete :destroy, id: @self_evaluation
    end

    assert_redirected_to self_evaluations_path
  end
end
