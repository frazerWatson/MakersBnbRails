require 'rails_helper'

describe Space, type: :model do
  it {is_expected.to have_attached_file(:image)}
  it {is_expected.to validate_attachment_content_type(:image).
    allowing('image/png', 'image/gif').
    rejecting('text/plain', 'text/xml')}

  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many :requests }
end
