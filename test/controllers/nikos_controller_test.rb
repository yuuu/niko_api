require "test_helper"

class NikosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @niko = nikos(:one)
  end

  test "should get index" do
    get nikos_url, as: :json
    assert_response :success
  end

  test "should create niko" do
    assert_difference("Niko.count") do
      post nikos_url, params: { niko: { comment: @niko.comment, date: @niko.date, mood: @niko.mood, user_id: @niko.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show niko" do
    get niko_url(@niko), as: :json
    assert_response :success
  end

  test "should update niko" do
    patch niko_url(@niko), params: { niko: { comment: @niko.comment, date: @niko.date, mood: @niko.mood, user_id: @niko.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy niko" do
    assert_difference("Niko.count", -1) do
      delete niko_url(@niko), as: :json
    end

    assert_response :no_content
  end
end
