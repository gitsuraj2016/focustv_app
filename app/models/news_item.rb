class NewsItem < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true

  has_attached_file :photo
  validates_attachment_file_name :photo, :matches => []
  # validates_uniqueness_of :photo_file_name

  validate :image_dimensions

  private

  def image_dimensions
    required_width  = 90
    required_height = 75
    if photo.queued_for_write[:original].present?
       dimensions = Paperclip::Geometry.from_file(photo.queued_for_write[:original].path)
       errors.add(:photo, "Width must be #{required_width}px") unless dimensions.width == required_width
       errors.add(:photo, "Height must be #{required_height}px") unless dimensions.height == required_height
    end
  end
  
end
