FactoryGirl.define do

  factory :category do
    sequence(:name) { |t| "Category #{t}"  }
    status true
  end

end