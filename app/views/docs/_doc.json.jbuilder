json.extract! doc, :id, :type, :number, :name, :created_at, :updated_at
json.url doc_url(doc, format: :json)
