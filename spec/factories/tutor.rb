FactoryBot.define do
    factory :tutor_1, class: Tutor do
      name { 'Ramesh' }
      email_id { 'ramesh@gmail.com' }
    end
  
    factory :tutor_2, class: Tutor do
      name { 'Giri' }
      email_id { 'giri@gmail.com' }
    end
  
    factory :tutor_3, class: Tutor do
      name { 'Thangavel' }
      email_id { 'thangavel@gmail.com' }
    end
end 