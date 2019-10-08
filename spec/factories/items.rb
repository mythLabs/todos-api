FactoryBot.define do
    factory :item do
      name { Faker::TvShows::HowIMetYourMother }
      done false
      todo_id nil
    end
  end