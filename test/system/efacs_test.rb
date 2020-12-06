require "application_system_test_case"

class EfacsTest < ApplicationSystemTestCase
  setup do
    @efac = efacs(:one)
  end

  test "visiting the index" do
    visit efacs_url
    assert_selector "h1", text: "Efacs"
  end

  test "creating a Efac" do
    visit efacs_url
    click_on "New Efac"

    fill_in "Acreditation requirements", with: @efac.acreditation_requirements
    fill_in "Content type", with: @efac.content_type
    fill_in "Duration", with: @efac.duration
    fill_in "Eval method", with: @efac.eval_method
    fill_in "Fee", with: @efac.fee
    fill_in "Instructor name", with: @efac.instructor_name
    fill_in "Instructor resumee", with: @efac.instructor_resumee
    fill_in "Modality", with: @efac.modality
    fill_in "Name", with: @efac.name
    fill_in "Objectives", with: @efac.objectives
    fill_in "Operative conditions", with: @efac.operative_conditions
    fill_in "Participation requirements", with: @efac.participation_requirements
    fill_in "References", with: @efac.references
    fill_in "Resources", with: @efac.resources
    fill_in "Resources availability", with: @efac.resources_availability
    fill_in "Utility", with: @efac.utility
    click_on "Create Efac"

    assert_text "Efac was successfully created"
    click_on "Back"
  end

  test "updating a Efac" do
    visit efacs_url
    click_on "Edit", match: :first

    fill_in "Acreditation requirements", with: @efac.acreditation_requirements
    fill_in "Content type", with: @efac.content_type
    fill_in "Duration", with: @efac.duration
    fill_in "Eval method", with: @efac.eval_method
    fill_in "Fee", with: @efac.fee
    fill_in "Instructor name", with: @efac.instructor_name
    fill_in "Instructor resumee", with: @efac.instructor_resumee
    fill_in "Modality", with: @efac.modality
    fill_in "Name", with: @efac.name
    fill_in "Objectives", with: @efac.objectives
    fill_in "Operative conditions", with: @efac.operative_conditions
    fill_in "Participation requirements", with: @efac.participation_requirements
    fill_in "References", with: @efac.references
    fill_in "Resources", with: @efac.resources
    fill_in "Resources availability", with: @efac.resources_availability
    fill_in "Utility", with: @efac.utility
    click_on "Update Efac"

    assert_text "Efac was successfully updated"
    click_on "Back"
  end

  test "destroying a Efac" do
    visit efacs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Efac was successfully destroyed"
  end
end
