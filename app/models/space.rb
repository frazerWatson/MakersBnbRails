class Space < ActiveRecord::Base
  has_attached_file :image, styles: {
    thumb: '100x100>',
    medium: '500x500>'
  }
  validates_attachment_content_type :image , :content_type => /\Aimage\/.*\Z/
end
