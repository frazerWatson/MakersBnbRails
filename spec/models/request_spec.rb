require 'rails_helper'

RSpec.describe Request, type: :model do
  it {is_expected.to belong_to :user}
  it {is_expected.to belong_to :space}
end
