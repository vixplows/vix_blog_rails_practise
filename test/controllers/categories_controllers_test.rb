require 'test_helper'

class CategoriesControllerTest <ActionController::TestCase

  def setup
    @category = Category.create(name: "sports")
  end

  test "should get categoryies index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    #will generate route for showing that category
    get(:show, {'id' => @category.id })
    assert_response :success
  end

end
