require 'rails_helper'

RSpec.describe "bikes/edit", type: :view do
  before(:each) do
    @bike = assign(:bike, Bike.create!(
      :model => "MyString",
      :image_url => "MyString",
      :description => "MyText",
      :rin => "MyText",
      :price => "9.99"
    ))
  end

  it "renders the edit bike form" do
    render

    assert_select "form[action=?][method=?]", bike_path(@bike), "post" do

      assert_select "input[name=?]", "bike[model]"

      assert_select "input[name=?]", "bike[image_url]"

      assert_select "textarea[name=?]", "bike[description]"

      assert_select "textarea[name=?]", "bike[rin]"

      assert_select "input[name=?]", "bike[price]"
    end
  end
end
