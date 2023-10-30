require_relative 'requirements'
require 'csv'

puts 'hello world!'

# Write a script to insert the talks from talks.csv into the talks table
# in your database
# Use the "embedding" column to store the embedding data for that talk
# (Adding the embeddings can be done all in one step or separate steps)
# client = HuggingFace::InferenceApi.new(api_token: ENV['HUGGING_FACE_API_TOKEN'])
# csv = CSV.read('talks.csv', headers: true)
# csv.each do |row|
#   ...
# end
