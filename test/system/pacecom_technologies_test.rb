require "application_system_test_case"

class PacecomTechnologiesTest < ApplicationSystemTestCase
  setup do
    @pacecom_technology = pacecom_technologies(:one)
  end

  test "visiting the index" do
    visit pacecom_technologies_url
    assert_selector "h1", text: "Pacecom Technologies"
  end

  test "creating a Pacecom technology" do
    visit pacecom_technologies_url
    click_on "New Pacecom Technology"

    fill_in "First name", with: @pacecom_technology.First_Name
    fill_in "Job role", with: @pacecom_technology.Job_Role
    fill_in "Last name", with: @pacecom_technology.Last_Name
    fill_in "Phone", with: @pacecom_technology.Phone
    fill_in "Place", with: @pacecom_technology.Place
    click_on "Create Pacecom technology"

    assert_text "Pacecom technology was successfully created"
    click_on "Back"
  end

  test "updating a Pacecom technology" do
    visit pacecom_technologies_url
    click_on "Edit", match: :first

    fill_in "First name", with: @pacecom_technology.First_Name
    fill_in "Job role", with: @pacecom_technology.Job_Role
    fill_in "Last name", with: @pacecom_technology.Last_Name
    fill_in "Phone", with: @pacecom_technology.Phone
    fill_in "Place", with: @pacecom_technology.Place
    click_on "Update Pacecom technology"

    assert_text "Pacecom technology was successfully updated"
    click_on "Back"
  end

  test "destroying a Pacecom technology" do
    visit pacecom_technologies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pacecom technology was successfully destroyed"
  end
end
