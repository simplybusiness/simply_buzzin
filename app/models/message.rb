class Message
  include Virtus

  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attribute :title

  def persisted?
    false
  end
end
