require 'test_helper'

class UserJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_job = user_jobs(:one)
  end

  test "should get index" do
    get user_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_job_url
    assert_response :success
  end

  test "should create user_job" do
    assert_difference('UserJob.count') do
      post user_jobs_url, params: { user_job: { applied: @user_job.applied, final: @user_job.final, interview: @user_job.interview, job_id: @user_job.job_id, reason: @user_job.reason, requirement_id: @user_job.requirement_id, result_id: @user_job.result_id, shortlist: @user_job.shortlist, user_id: @user_job.user_id } }
    end

    assert_redirected_to user_job_url(UserJob.last)
  end

  test "should show user_job" do
    get user_job_url(@user_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_job_url(@user_job)
    assert_response :success
  end

  test "should update user_job" do
    patch user_job_url(@user_job), params: { user_job: { applied: @user_job.applied, final: @user_job.final, interview: @user_job.interview, job_id: @user_job.job_id, reason: @user_job.reason, requirement_id: @user_job.requirement_id, result_id: @user_job.result_id, shortlist: @user_job.shortlist, user_id: @user_job.user_id } }
    assert_redirected_to user_job_url(@user_job)
  end

  test "should destroy user_job" do
    assert_difference('UserJob.count', -1) do
      delete user_job_url(@user_job)
    end

    assert_redirected_to user_jobs_url
  end
end
