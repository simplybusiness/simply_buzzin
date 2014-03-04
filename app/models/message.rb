class Message
  include Virtus

  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attribute :title
  attribute :header
  attribute :body
  attribute :smiley_face
  attribute :printer

  def persisted?
    false
  end
end
