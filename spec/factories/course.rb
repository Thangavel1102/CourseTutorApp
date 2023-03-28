FactoryBot.define do
  factory :course_1, class: Course do
    name { 'ROR' }
    description  { 'It is a framework to create web applications' }
    price { 200 }
  end

  factory :course_2, class: Course do
    name { 'ReactJs' }
    description  { 'It is a JS framework to create UI designs' }
    price { 190 }
  end

  factory :course_3, class: Course do
    name { 'SQL' }
    description  { 'It is Structured Query Language' }
    price { 150 }
  end
end 