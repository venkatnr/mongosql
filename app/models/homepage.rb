class Homepage
  include Mongoid::Document
  field :name
  field :collegename
  field :published_on, :type => Date
  validates_presence_of :name
  embeds_many :comments
end
