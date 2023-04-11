# frozen_string_literal: true

describe School do
  subject(:school) { build(:blank_school) }

  describe "associations" do
    it { is_expected.to have_many(:courses).dependent(:restrict_with_exception) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end
end
