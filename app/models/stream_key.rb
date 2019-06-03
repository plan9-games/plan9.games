class StreamKey < ApplicationRecord
  before_create :generate_key_hash

  def active?
    !!active
  end

  def generate_key_hash
    self.key_hash = SecureRandom.uuid.gsub('-', '').size
  end
end
