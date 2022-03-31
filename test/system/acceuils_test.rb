require "application_system_test_case"

class AcceuilsTest < ApplicationSystemTestCase
  setup do
    @acceuil = acceuils(:one)
  end

  test "visiting the index" do
    visit acceuils_url
    assert_selector "h1", text: "Acceuils"
  end

  test "creating a Acceuil" do
    visit acceuils_url
    click_on "New Acceuil"

    fill_in "Author", with: @acceuil.author
    fill_in "Photo", with: @acceuil.photo
    fill_in "Published at", with: @acceuil.published_at
    fill_in "Text", with: @acceuil.text
    fill_in "Title", with: @acceuil.title
    click_on "Create Acceuil"

    assert_text "Acceuil was successfully created"
    click_on "Back"
  end

  test "updating a Acceuil" do
    visit acceuils_url
    click_on "Edit", match: :first

    fill_in "Author", with: @acceuil.author
    fill_in "Photo", with: @acceuil.photo
    fill_in "Published at", with: @acceuil.published_at
    fill_in "Text", with: @acceuil.text
    fill_in "Title", with: @acceuil.title
    click_on "Update Acceuil"

    assert_text "Acceuil was successfully updated"
    click_on "Back"
  end

  test "destroying a Acceuil" do
    visit acceuils_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acceuil was successfully destroyed"
  end
end
