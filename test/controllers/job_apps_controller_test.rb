require 'test_helper'

class JobAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_app = job_apps(:one)
  end

  test "should get index" do
    get job_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_job_app_url
    assert_response :success
  end

  test "should create job_app" do
    assert_difference('JobApp.count') do
      post job_apps_url, params: { job_app: { First: @job_app.First, Job: @job_app.Job, Last: @job_app.Last, Name: @job_app.Name, Phone: @job_app.Phone, Place: @job_app.Place, Role: @job_app.Role } }
    end

    assert_redirected_to job_app_url(JobApp.last)
  end

  test "should show job_app" do
    get job_app_url(@job_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_app_url(@job_app)
    assert_response :success
  end

  test "should update job_app" do
    patch job_app_url(@job_app), params: { job_app: { First: @job_app.First, Job: @job_app.Job, Last: @job_app.Last, Name: @job_app.Name, Phone: @job_app.Phone, Place: @job_app.Place, Role: @job_app.Role } }
    assert_redirected_to job_app_url(@job_app)
  end

  test "should destroy job_app" do
    assert_difference('JobApp.count', -1) do
      delete job_app_url(@job_app)
    end

    assert_redirected_to job_apps_url
  end
end
