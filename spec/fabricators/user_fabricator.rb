Fabricator(:user) do
  email { sequence(:email) { |i| "person_#{i}@example.com" } }
  password '123123'  
end

Fabricator(:admin, :from => :user) do
  role :administrator
end
