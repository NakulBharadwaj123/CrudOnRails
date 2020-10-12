require 'test_helper'

class PacecomTechnologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pacecom_technology = pacecom_technologies(:one)
  end

  test "should get index" do
    get pacecom_technologies_url
    assert_response :success
  end

  test "should get new" do
    get new_pacecom_technology_url
    assert_response :success
  end

  test "should create pacecom_technology" do
    assert_difference('PacecomTechnology.count') do
      post pacecom_technologies_url, params: { pacecom_technology: { First_Name: @pacecom_technology.First_Name, Job_Role: @pacecom_technology.Job_Role, Last_Name: @pacecom_technology.Last_Name, Phone: @pacecom_technology.Phone, Place: @pacecom_technology.Place } }
    end

    assert_redirected_to pacecom_technology_url(PacecomTechnology.last)
  end

  test "should show pacecom_technology" do
    get pacecom_technology_url(@pacecom_technology)
    assert_response :success
  end

  test "should get edit" do
    get edit_pacecom_technology_url(@pacecom_technology)
    assert_response :success
  end

  test "should update pacecom_technology" do
    patch pacecom_technology_url(@pacecom_technology), params: { pacecom_technology: { First_Name: @pacecom_technology.First_Name, Job_Role: @pacecom_technology.Job_Role, Last_Name: @pacecom_technology.Last_Name, Phone: @pacecom_technology.Phone, Place: @pacecom_technology.Place } }
    assert_redirected_to pacecom_technology_url(@pacecom_technology)
  end

  test "should destroy pacecom_technology" do
    assert_difference('PacecomTechnology.count', -1) do
      delete pacecom_technology_url(@pacecom_technology)
    end

    assert_redirected_to pacecom_technologies_url
  end
end
