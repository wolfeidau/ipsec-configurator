FactoryGirl.define do

  factory :user do
    password "raftudott"
    password_confirmation "raftudott"

    factory :john do
      name "John Doe"
      username "jdoeman"
      email "john.doe@hsd.com.au"
    end

    factory :barry do
      name "Barry Manilow"
      username "barry"
      email "barry.manilow@example.com"
    end

  end

end
