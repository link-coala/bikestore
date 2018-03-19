require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :model => "MyString",
      :image_url => "MyString",
      :description => "MyText",
      :rin => "MyText",
      :price => "9.99"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[model]"

      assert_select "input[name=?]", "product[image_url]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "textarea[name=?]", "product[rin]"

      assert_select "input[name=?]", "product[price]"
    end
  end
end
