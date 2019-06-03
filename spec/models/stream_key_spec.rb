require 'rails_helper'

RSpec.describe StreamKey do
  it "generates key_hash" do
    stream_key = StreamKey.create!(key: "jon_xxx1", active: true)
    expect(stream_key.key_hash).to be
  end
end
