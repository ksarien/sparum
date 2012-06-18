Fabricator(:forum) do
  name { sequence(:name) { |i| "Test Forum #{i}"} }
  status 1
  topics_count 0
end
