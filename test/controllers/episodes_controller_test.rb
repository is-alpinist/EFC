require 'test_helper'

class EpisodesControllerTest < ActionController::TestCase
  setup do
    @episode = episodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:episodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create episode" do
    assert_difference('Episode.count') do
      post :create, episode: { budget: @episode.budget, cost_to_date: @episode.cost_to_date, episode_num: @episode.episode_num, estimate_to_complete: @episode.estimate_to_complete, estimated_final_cost: @episode.estimated_final_cost, variance: @episode.variance }
    end

    assert_redirected_to episode_path(assigns(:episode))
  end

  test "should show episode" do
    get :show, id: @episode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @episode
    assert_response :success
  end

  test "should update episode" do
    patch :update, id: @episode, episode: { budget: @episode.budget, cost_to_date: @episode.cost_to_date, episode_num: @episode.episode_num, estimate_to_complete: @episode.estimate_to_complete, estimated_final_cost: @episode.estimated_final_cost, variance: @episode.variance }
    assert_redirected_to episode_path(assigns(:episode))
  end

  test "should destroy episode" do
    assert_difference('Episode.count', -1) do
      delete :destroy, id: @episode
    end

    assert_redirected_to episodes_path
  end
end
