require "application_system_test_case"

class JobAppsTest < ApplicationSystemTestCase
  setup do
    @job_app = job_apps(:one)
  end

  test "visiting the index" do
    visit job_apps_url
    assert_selector "h1", text: "Job Apps"
  end

  test "creating a Job app" do
    visit job_apps_url
    click_on "New Job App"

    fill_in "First", with: @job_app.First
    fill_in "Job", with: @job_app.Job
    fill_in "Last", with: @job_app.Last
    fill_in "Name", with: @job_app.Name
    fill_in "Phone", with: @job_app.Phone
    fill_in "Place", with: @job_app.Place
    fill_in "Role", with: @job_app.Role
    click_on "Create Job app"

    assert_text "Job app was successfully created"
    click_on "Back"
  end

  test "updating a Job app" do
    visit job_apps_url
    click_on "Edit", match: :first

    fill_in "First", with: @job_app.First
    fill_in "Job", with: @job_app.Job
    fill_in "Last", with: @job_app.Last
    fill_in "Name", with: @job_app.Name
    fill_in "Phone", with: @job_app.Phone
    fill_in "Place", with: @job_app.Place
    fill_in "Role", with: @job_app.Role
    click_on "Update Job app"

    assert_text "Job app was successfully updated"
    click_on "Back"
  end

  test "destroying a Job app" do
    visit job_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job app was successfully destroyed"
  end
end
