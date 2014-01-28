class Email
  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :created_at, DateTime

  validates_presence_of :email
  validates_uniqueness_of :email

end
