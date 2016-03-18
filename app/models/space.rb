class Space < ActiveRecord::Base

  belongs_to :user
  has_many :requests

  has_attached_file :image, styles: {
    thumb: '250x250>',
    medium: '500x500>'
  }
  validates_attachment_content_type :image , :content_type => /\Aimage\/.*\Z/

  def image_url
    image.url(:thumb)
  end

  def as_json(options = {})
    super(options.merge(include: :requests))
  end
end
