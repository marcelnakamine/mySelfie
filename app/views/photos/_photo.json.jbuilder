json.extract! photo, :id, :photoUrl, :description, :rating, :tag, :user, :created_at, :updated_at
json.url photo_url(photo, format: :json)
