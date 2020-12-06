require 'test_helper'

class EfacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @efac = efacs(:one)
  end

  test "should get index" do
    get efacs_url
    assert_response :success
  end

  test "should get new" do
    get new_efac_url
    assert_response :success
  end

  test "should create efac" do
    assert_difference('Efac.count') do
      post efacs_url, params: { efac: { acreditation_requirements: @efac.acreditation_requirements, content_type: @efac.content_type, duration: @efac.duration, eval_method: @efac.eval_method, fee: @efac.fee, instructor_name: @efac.instructor_name, instructor_resumee: @efac.instructor_resumee, modality: @efac.modality, name: @efac.name, objectives: @efac.objectives, operative_conditions: @efac.operative_conditions, participation_requirements: @efac.participation_requirements, references: @efac.references, resources: @efac.resources, resources_availability: @efac.resources_availability, utility: @efac.utility } }
    end

    assert_redirected_to efac_url(Efac.last)
  end

  test "should show efac" do
    get efac_url(@efac)
    assert_response :success
  end

  test "should get edit" do
    get edit_efac_url(@efac)
    assert_response :success
  end

  test "should update efac" do
    patch efac_url(@efac), params: { efac: { acreditation_requirements: @efac.acreditation_requirements, content_type: @efac.content_type, duration: @efac.duration, eval_method: @efac.eval_method, fee: @efac.fee, instructor_name: @efac.instructor_name, instructor_resumee: @efac.instructor_resumee, modality: @efac.modality, name: @efac.name, objectives: @efac.objectives, operative_conditions: @efac.operative_conditions, participation_requirements: @efac.participation_requirements, references: @efac.references, resources: @efac.resources, resources_availability: @efac.resources_availability, utility: @efac.utility } }
    assert_redirected_to efac_url(@efac)
  end

  test "should destroy efac" do
    assert_difference('Efac.count', -1) do
      delete efac_url(@efac)
    end

    assert_redirected_to efacs_url
  end
end
