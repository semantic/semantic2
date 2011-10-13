Factory.define :user do |f|
  f.sequence(:email) { |n| "membre#{n}@semantic.cat" }
end

