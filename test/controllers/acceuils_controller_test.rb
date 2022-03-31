require "test_helper"

class AcceuilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acceuil = acceuils(:one)
  end

  test "should get index" do
    get acceuils_url
    assert_response :success
  end

  test "should get new" do
    get new_acceuil_url
    assert_response :success
  end

  test "should create acceuil" do
    assert_difference('Acceuil.count') do
      post acceuils_url, params: { acceuil: { author: @acceuil.author, photo: @acceuil.photo, published_at: @acceuil.published_at, text: @acceuil.text, title: @acceuil.title } }
    end

    assert_redirected_to acceuil_url(Acceuil.last)
  end

  test "should show acceuil" do
    get acceuil_url(@acceuil)
    assert_response :success
  end

  test "should get edit" do
    get edit_acceuil_url(@acceuil)
    assert_response :success
  end

  test "should update acceuil" do
    patch acceuil_url(@acceuil), params: { acceuil: { author: @acceuil.author, photo: @acceuil.photo, published_at: @acceuil.published_at, text: @acceuil.text, title: @acceuil.title } }
    assert_redirected_to acceuil_url(@acceuil)
  end

  test "should destroy acceuil" do
    assert_difference('Acceuil.count', -1) do
      delete acceuil_url(@acceuil)
    end

    assert_redirected_to acceuils_url
  end
end
