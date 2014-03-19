json.array!(@cutes) do |cute|
  json.extract! cute, :id, :Animal, :image_url, :description, :level_of_cuteness
  json.url cute_url(cute, format: :json)
end
