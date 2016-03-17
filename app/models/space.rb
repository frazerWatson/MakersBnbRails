class Space < ActiveRecord::Base

  belongs_to :user

  has_attached_file :image, styles: {
    thumb: '250x250>',
    medium: '500x500>'
  }
  validates_attachment_content_type :image , :content_type => /\Aimage\/.*\Z/
  
  def image_url
    image.url(:thumb)
  end
end
