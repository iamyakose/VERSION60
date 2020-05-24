require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url, as: :json
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post reports_url, params: { report: { observations: @report.observations, problem: @report.problem, reportable_id: @report.reportable_id, reportable_metadata: @report.reportable_metadata, reportable_type: @report.reportable_type, reporter_profile_id: @report.reporter_profile_id, status: @report.status } }, as: :json
    end

    assert_response 201
  end

  test "should show report" do
    get report_url(@report), as: :json
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { observations: @report.observations, problem: @report.problem, reportable_id: @report.reportable_id, reportable_metadata: @report.reportable_metadata, reportable_type: @report.reportable_type, reporter_profile_id: @report.reporter_profile_id, status: @report.status } }, as: :json
    assert_response 200
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete report_url(@report), as: :json
    end

    assert_response 204
  end
end
