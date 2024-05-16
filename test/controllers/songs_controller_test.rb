require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  
  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end

  test "create" do
    assert_difference "Song.count", 1 do
      post "/songs.json", params: { title: "The Star Room", album: "Watching Movies with the Sound Off", artist: "Mac Miller", year: 2013}
      assert_response 200
  end
end
