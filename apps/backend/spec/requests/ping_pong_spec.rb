# frozen_string_literal: true

describe "Ping pong" do
  before { get(ping_path) }

  it "returns http success" do
    expect(response).to have_http_status(:success)
  end

  it "have pong" do
    expect(json_body[:message]).to eq("pong")
  end
end
