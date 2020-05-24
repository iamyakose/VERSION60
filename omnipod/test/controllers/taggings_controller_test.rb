require 'test_helper'

class TaggingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tagging = taggings(:one)
  end

  test "should get index" do
    get taggings_url, as: :json
    assert_response :success
  end

  test "should create tagging" do
    assert_difference('Tagging.count') do
      post taggings_url, params: { tagging: { context: @tagging.context, tag_id: @tagging.tag_id, taggable_id: @tagging.taggable_id, taggable_type: @tagging.taggable_type, tagger_id: @tagging.tagger_id, tagger_type: @tagging.tagger_type } }, as: :json
    end

    assert_response 201
  end

  test "should show tagging" do
    get tagging_url(@tagging), as: :json
    assert_response :success
  end

  test "should update tagging" do
    patch tagging_url(@tagging), params: { tagging: { context: @tagging.context, tag_id: @tagging.tag_id, taggable_id: @tagging.taggable_id, taggable_type: @tagging.taggable_type, tagger_id: @tagging.tagger_id, tagger_type: @tagging.tagger_type } }, as: :json
    assert_response 200
  end

  test "should destroy tagging" do
    assert_difference('Tagging.count', -1) do
      delete tagging_url(@tagging), as: :json
    end

    assert_response 204
  end
end
