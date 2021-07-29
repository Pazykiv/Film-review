json.extract! movie, :id, :title, :description, :category, :image, :created_at, :updated_at
json.url movie_url(movie, format: :json)
