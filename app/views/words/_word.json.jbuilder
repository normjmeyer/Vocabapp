json.extract! word, :id, :name, :language, :word_class, :definition, :comments, :frequency, :dictionary_id, :created_at, :updated_at
json.url word_url(word, format: :json)