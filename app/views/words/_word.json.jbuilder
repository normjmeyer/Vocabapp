json.extract! word, :id, :name, :language, :word_class, :definition, :comments, :frequency, :dictionary_id, :created_at, :updated_at
json.url dictionary_word_url(word.dictionary, word, format: :json) #I edited from word_url to dictionary_word_url
