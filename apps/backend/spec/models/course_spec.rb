# frozen_string_literal: true

describe Course do
  subject(:course) { build(:blank_course) }

  describe "associations" do
    it { is_expected.to belong_to(:school) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:start_date) }
  end
end
