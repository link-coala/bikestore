require 'rails_helper'

RSpec.describe "bikes/index", type: :view do
  before(:each) do
    assign(:bikes, [
      Bike.create!(
        :model => "Model",
        :image_url => "Image Url",
        :description => "MyText",
        :rin => "MyText",
        :price => "9.99"
      ),
      Bike.create!(
        :model => "Model",
        :image_url => "Image Url",
        :description => "MyText",
        :rin => "MyText",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of bikes" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
