DB = Sequel.connect(ENV['DATABASE_URL'] || 'sqlite://dicely.db')
Sequel::Model.plugin :timestamps

class Roll < Sequel::Model
end
