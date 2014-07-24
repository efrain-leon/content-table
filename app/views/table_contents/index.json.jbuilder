json.array!(@table_contents) do |table_content|
  json.extract! table_content, :id, :content, :level, :order, :id_book
  json.url table_content_url(table_content, format: :json)
end
