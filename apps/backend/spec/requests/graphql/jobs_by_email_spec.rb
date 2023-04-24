# frozen_string_literal: true

describe "Find jobs by user email" do
  before do
    create(:page, user:) if user.present?

    post(graphql_path, params: { query: })
  end

  let(:user) { nil }
  let(:email) { user&.email }

  let(:query) do
    <<-GRAPHQL.squish
      {
        jobsByEmail(userEmail: "#{email}") {
          title
          hireDate
          rescissionDate
          description
          company {
            name
            website
            brand
          }
        }
      }
    GRAPHQL
  end

  it { expect(response).to have_http_status(:success) }
  it { expect(json_body_data).to have_key(:jobsByEmail) }
  it { expect(json_body_data[:jobsByEmail]).to be_blank }

  context "when jobs exists" do
    let(:user) { create(:user) }
    let(:json_jobs) { json_body_data[:jobsByEmail] }

    it { expect(json_jobs).to all(have_key(:title)) }
    it { expect(json_jobs).to all(have_key(:description)) }
    it { expect(json_jobs).to all(have_key(:location)) }
    it { expect(json_jobs).to all(have_key(:country)) }
    it { expect(json_jobs).to all(have_key(:email)) }
  end
end
