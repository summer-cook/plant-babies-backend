class PlantSerializer < ActiveModel::Serializer
include Rails.application.routes.url_helpers
  attributes :id, :name, :watering_frequency, :weekly_or_monthly, :last_time_watered, :description, :image_url

  def image_url
    rails_blob_path(object.image, disposition: "attachment", only_path: true) if object.image.attached?
  end
end
