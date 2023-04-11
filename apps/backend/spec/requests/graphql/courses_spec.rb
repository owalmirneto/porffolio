# frozen_string_literal: true

describe "List all courses" do
  before do
    create_list(:course, course_quantity)
    post(graphql_path, params: { query: })
  end

  let(:course_quantity) { 0 }
  let(:query) do
    <<-GRAPHQL.squish
      {
        courses {
          id
          title
          subtitle
          startDate
          finishDate
          school {
            name
            website
          }
        }
      }
    GRAPHQL
  end

  it { expect(response).to have_http_status(:success) }
  it { expect(json_body_data).to have_key(:courses) }
  it { expect(json_body_data[:courses]).to be_blank }

  context "when courses exists" do
    let(:course_quantity) { 3 }
    let(:json_courses) { json_body_data[:courses] }

    it { expect(json_courses).to all(have_key(:id)) }
    it { expect(json_courses).to all(have_key(:title)) }
    it { expect(json_courses).to all(have_key(:subtitle)) }
    it { expect(json_courses).to all(have_key(:startDate)) }
    it { expect(json_courses).to all(have_key(:finishDate)) }
    it { expect(json_courses).to all(have_key(:school)) }
  end
end
