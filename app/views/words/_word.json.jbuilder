json.extract! word, :id, :name, :language, :word_class, :definition, :comments, :frequency, :created_at, :updated_at
json.url word_url(word, format: :json)