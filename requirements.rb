require 'dotenv'
require 'pg'
require 'sequel'
require 'hugging_face'
require 'pgvector'

Dotenv.load
DB = Sequel.connect(ENV['DATABASE_URL'])

class Talk < Sequel::Model
  plugin :pgvector, :embedding
end
