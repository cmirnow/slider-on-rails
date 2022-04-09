require 'rails_helper'

RSpec.describe 'Admin::Sliders', type: :request do
  subject { get root_url }
  it(:status) { should eq 200 }
end
