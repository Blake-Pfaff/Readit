require 'rails_helper'

RSpec.describe Vote, type: :model do
  let(:topic) { create(:topic) }
  let(:user) { create(:user) }
  let(:post) { create(:post) }
  let(:vote) { create("vote") }

  #test voting belongs to posts & users
  it { is_expected.to belong_to(:post) }
  it { is_expected.to belong_to(:user) }
  # test value is present when votes are made
  it { is_expected.to validate_presence_of(:value) }
  #validate value is either -1 or 1
  it { is_expected.to validate_inclusion_of(:value).in_array([-1, 1]) }

end
