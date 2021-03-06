# frozen_string_literal: true

FactoryBot.define do
  factory :course do
    title { 'MyString' }
    general_memo { 'MyString' }
    date { '2021-02-08' }
    association :user
  end
  factory :most_recent, class: 'Course' do
    title { 'MyString' }
    general_memo { 'MyString' }
    date { Time.zone.now }
    association :user
  end
end
