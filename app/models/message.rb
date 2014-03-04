class Message
  include Virtus

  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attribute :title
  attribute :header
  attribute :body
  attribute :icon
  attribute :printer

  def persisted?
    false
  end
end
