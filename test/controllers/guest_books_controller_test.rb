require 'test_helper'

class GuestBooksControllerTest < ActionController::TestCase
  setup do
    @guest_book = guest_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guest_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guest_book" do
    assert_difference('GuestBook.count') do
      post :create, guest_book: { ip_address: @guest_book.ip_address, message: @guest_book.message, name: @guest_book.name }
    end

    assert_redirected_to guest_book_path(assigns(:guest_book))
  end

  test "should show guest_book" do
    get :show, id: @guest_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guest_book
    assert_response :success
  end

  test "should update guest_book" do
    patch :update, id: @guest_book, guest_book: { ip_address: @guest_book.ip_address, message: @guest_book.message, name: @guest_book.name }
    assert_redirected_to guest_book_path(assigns(:guest_book))
  end

  test "should destroy guest_book" do
    assert_difference('GuestBook.count', -1) do
      delete :destroy, id: @guest_book
    end

    assert_redirected_to guest_books_path
  end
end
