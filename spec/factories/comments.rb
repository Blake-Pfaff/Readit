FactoryGirl.comments do
  factory :comments do
    body RandomData.random_paragraph
    topic
    user
    rank 0.0
  end
end
