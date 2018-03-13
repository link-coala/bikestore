require 'rails_helper'

RSpec.describe "bikes/show", type: :view do
  before(:each) do
    @bike = assign(:bike, Bike.create!(
      :model => "Model",
      :image_url => "Image Url",
      :description => "MyText",
      :rin => "MyText",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
  end
end
