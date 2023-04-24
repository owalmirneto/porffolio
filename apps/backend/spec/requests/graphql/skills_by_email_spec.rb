# frozen_string_literal: true

describe "List all skills by user email" do
  before do
    create(:page, user:) if user.present?

    post(graphql_path, params: { query: })
  end

  let(:user) { nil }
  let(:email) { user&.email }

  let(:query) do
    <<-GRAPHQL.squish
      {
        skillsByEmail(userEmail: "owalmirneto@gmail.com") {
          id
          kind
          name
          image
        }
      }
    GRAPHQL
  end

  it { expect(response).to have_http_status(:success) }
  it { expect(json_body_data).to have_key(:skillsByEmail) }
  it { expect(json_body_data[:skillsByEmail]).to be_blank }

  context "when jobs exists" do
    let(:user) { create(:user) }
    let(:json_jobs) { json_body_data[:skillsByEmail] }

    it { expect(json_jobs).to all(have_key(:id)) }
    it { expect(json_jobs).to all(have_key(:kind)) }
    it { expect(json_jobs).to all(have_key(:name)) }
    it { expect(json_jobs).to all(have_key(:image)) }
  end
end
