require 'test_helper'

class LinkedInContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linked_in_contact = linked_in_contacts(:one)
  end

  test "should get index" do
    get linked_in_contacts_url, as: :json
    assert_response :success
  end

  test "should create linked_in_contact" do
    assert_difference('LinkedInContact.count') do
      post linked_in_contacts_url, params: { linked_in_contact: { url_address: @linked_in_contact.url_address } }, as: :json
    end

    assert_response 201
  end

  test "should show linked_in_contact" do
    get linked_in_contact_url(@linked_in_contact), as: :json
    assert_response :success
  end

  test "should update linked_in_contact" do
    patch linked_in_contact_url(@linked_in_contact), params: { linked_in_contact: { url_address: @linked_in_contact.url_address } }, as: :json
    assert_response 200
  end

  test "should destroy linked_in_contact" do
    assert_difference('LinkedInContact.count', -1) do
      delete linked_in_contact_url(@linked_in_contact), as: :json
    end

    assert_response 204
  end
end
