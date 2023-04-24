# frozen_string_literal: true

describe Job do
  subject(:job) { build(:blank_job) }

  describe "associations" do
    it { is_expected.to belong_to(:company) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:hire_date) }
  end
end
