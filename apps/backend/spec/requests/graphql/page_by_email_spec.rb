# frozen_string_literal: true

describe "Find page by user email" do
  before do
    create(:page, user:) if user.present?

    post(graphql_path, params: { query: })
  end

  let(:user) { nil }
  let(:email) { user&.email }

  let(:query) do
    <<-GRAPHQL.squish
      {
        pageByEmail(userEmail: "#{email}") {
          title
          description
          location
          country
          email
        }
      }
    GRAPHQL
  end

  it { expect(response).to have_http_status(:success) }
  it { expect(json_body_data).to have_key(:pageByEmail) }
  it { expect(json_body_data[:pageByEmail]).to be_blank }

  context "when courses exists" do
    let(:user) { create(:user) }
    let(:json_page) { json_body_data[:pageByEmail] }

    it { expect(json_page).to have_key(:title) }
    it { expect(json_page).to have_key(:description) }
    it { expect(json_page).to have_key(:location) }
    it { expect(json_page).to have_key(:country) }
    it { expect(json_page).to have_key(:email) }
  end
end
