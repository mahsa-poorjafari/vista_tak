json.array!(@photos) do |photo|
  json.extract! photo, :id, :description_en, :description_fa, :category_id, :sub_group_id, :products_id
  json.url photo_url(photo, format: :json)
end
